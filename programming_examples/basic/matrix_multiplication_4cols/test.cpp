//===- test.cpp -------------------------------------------000---*- C++ -*-===//
//
// This file is licensed under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
// Copyright (C) 2023, Advanced Micro Devices, Inc.
//
//===----------------------------------------------------------------------===//

#include <bits/stdc++.h>
#include <boost/program_options.hpp>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <ctime>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <stdfloat>
#include <thread> 

#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"


#include "common.h"

#ifndef DATATYPES_USING_DEFINED
#define DATATYPES_USING_DEFINED
#ifndef DTYPE_IN
#define DTYPE_IN std::bfloat16_t
#endif
#ifndef DTYPE_OUT
#define DTYPE_OUT std::bfloat16_t
#endif
#ifndef DTYPE_ACC
#define DTYPE_ACC float
#endif
using A_DATATYPE = DTYPE_IN;
using B_DATATYPE = DTYPE_IN;
using C_DATATYPE = DTYPE_OUT;
using ACC_DATATYPE = DTYPE_ACC;
#endif

#define XSTR(X) STR(X)
#define STR(X) #X

#define TWO_THREAD
#define TWO_KENEL
constexpr long long verify_stochastic_threshold = 1024 * 1024 * 1024;
constexpr int verify_stochastic_n_samples = 1000;

// Verification tolerance
// See "Note on Numerical Tolerances" in README.md
float abs_tol = matmul_common::get_abs_tol<C_DATATYPE>();
float rel_tol = matmul_common::get_rel_tol<C_DATATYPE>();

namespace po = boost::program_options;

int main(int argc, const char *argv[]) {
  auto very_begin = std::chrono::high_resolution_clock::now();
  std::thread thread1;
  std::thread thread2;
  // Program arguments parsing
  po::options_description desc("Allowed options");
  po::variables_map vm;
  matmul_common::add_default_options(desc);

  matmul_common::parse_options(argc, argv, desc, vm);
  int verbosity = vm["verbosity"].as<int>();
  int do_verify = vm["verify"].as<bool>();
  int n_iterations = vm["iters"].as<int>();
  int n_warmup_iterations = vm["warmup"].as<int>();
  int trace_size = vm["trace_sz"].as<int>();
  int b_col_maj = vm["b_col_maj"].as<int>();

  // Fix the seed to ensure reproducibility in CI.
  srand(1726250518); // srand(time(NULL));

  int M = vm["M"].as<int>();
  int K = vm["K"].as<int>();
  int N = vm["N"].as<int>();
  int M1 = vm["M1"].as<int>();
  int N1 = vm["N1"].as<int>();
  bool do_verify_stochastic =
      (long long)M * N * K > verify_stochastic_threshold;

  if (verbosity >= 1) {
    std::cout << "First Matrix size " << M << "x" << K << "x" << N << std::endl;
    std::cout << "Second Matrix size " << M1 << "x" << K << "x" << N1 << std::endl;
  }
  
  int A_VOLUME = M * K;
  int B_VOLUME = N * K;
  int C_VOLUME = M * N;

  int C1_VOLUME = M1 * N1;
  int A1_VOLUME = M1 * K;
  int B1_VOLUME = N1 * K;
  
  size_t A_SIZE = (A_VOLUME * sizeof(A_DATATYPE));
  size_t B_SIZE = (B_VOLUME * sizeof(B_DATATYPE));
  size_t C_SIZE = (C_VOLUME * sizeof(C_DATATYPE));
  size_t C1_SIZE = (C1_VOLUME * sizeof(C_DATATYPE));
  size_t A1_SIZE = (A1_VOLUME * sizeof(A_DATATYPE));
  size_t B1_SIZE = (B1_VOLUME * sizeof(B_DATATYPE));

  size_t OUT_SIZE = C_SIZE + trace_size;

  auto initialization_begin = std::chrono::high_resolution_clock::now();
  std::cout << "start_initialization " << std::chrono::duration_cast<std::chrono::microseconds>(initialization_begin - very_begin).count() << "us." << std::endl;

  auto test = vm["new_instr"].as<std::string>();
  std::cout << "New Instr: " << test << std::endl;
  std::vector<uint32_t> instr_v =
      matmul_common::load_instr_sequence(vm["instr"].as<std::string>());
  std::vector<uint32_t> instr_v1 =
      matmul_common::load_instr_sequence(vm["new_instr"].as<std::string>());

  if (verbosity >= 1){
    std::cout << "First Sequence instr count: " << instr_v.size() << "\n";
    std::cout << "Second Sequence instr count: " << instr_v1.size() << "\n";
  }

  auto load_instr = std::chrono::high_resolution_clock::now();
  std::cout << "loading two instructions takes  " << std::chrono::duration_cast<std::chrono::microseconds>(load_instr - initialization_begin).count() << "us." << std::endl;

  // Start the XRT test code
  // Get a device handle
  unsigned int device_index = 0;
  auto device = xrt::device(device_index);

  // Load the xclbin
  std::chrono::high_resolution_clock::time_point t1 =
      std::chrono::high_resolution_clock::now();  
  if (verbosity >= 1)
    std::cout << "Loading xclbin: " << vm["xclbin"].as<std::string>() << "\n";
  auto xclbin = xrt::xclbin(vm["xclbin"].as<std::string>());

  if (verbosity >= 1)
    std::cout << "Kernel opcode: " << vm["kernel"].as<std::string>() << "\n";
  std::string Node = vm["kernel"].as<std::string>();

  // Get the kernel from the xclbin
  auto xkernels = xclbin.get_kernels();
  auto xkernel = *std::find_if(xkernels.begin(), xkernels.end(),
                               [Node, verbosity](xrt::xclbin::kernel &k) {
                                 auto name = k.get_name();
                                 if (verbosity >= 1) {
                                   std::cout << "Name: " << name << std::endl;
                                 }
                                 return name.rfind(Node, 0) == 0;
                               });
  auto kernelName = xkernel.get_name();

  if (verbosity >= 1)
    std::cout << "Registering xclbin: " << vm["xclbin"].as<std::string>()
              << "\n";
                          
  device.register_xclbin(xclbin);
  std::chrono::high_resolution_clock::time_point t2 =
      std::chrono::high_resolution_clock::now();
  auto duration = std::chrono::duration_cast<std::chrono::microseconds>(t2 - t1).count();
  std::cout << "Registering xclbin and get kernal from bin took " << duration << "us." << std::endl;

  // get a hardware context
  if (verbosity >= 1)
    std::cout << "Getting hardware context.\n";
  xrt::hw_context context(device, xclbin.get_uuid());

  // get a kernel handle
  if (verbosity >= 1)
    std::cout << "Getting handle to kernel:" << kernelName << "\n";
  auto kernel = xrt::kernel(context, kernelName);

  auto bo_instr = xrt::bo(device, instr_v.size() * sizeof(int),
                          XCL_BO_FLAGS_CACHEABLE, kernel.group_id(1));
  auto bo_a =
      xrt::bo(device, A_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(3));
  auto bo_b =
      xrt::bo(device, B_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(4));
  auto bo_out =
      xrt::bo(device, OUT_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(5));

  if (verbosity >= 1) {
    std::cout << "Writing data into buffer objects.\n";
  }

  A_DATATYPE *bufA = bo_a.map<A_DATATYPE *>();
  std::vector<A_DATATYPE> AVec(A_VOLUME);
  for (int i = 0; i < A_VOLUME; i++) {
    // AVec[i] = matmul_common::get_random<A_DATATYPE>();
    AVec[i] = i;
  }
  memcpy(bufA, AVec.data(), (AVec.size() * sizeof(A_DATATYPE)));
  B_DATATYPE *bufB = bo_b.map<B_DATATYPE *>();
  std::vector<B_DATATYPE> BVec(B_VOLUME);
  for (int i = 0; i < B_VOLUME; i++) {
    // BVec[i] = matmul_common::get_random<B_DATATYPE>() * i;
    Diagonal:
    if(i % N == i / N) {
      BVec[i] = 1;
    } else {
      BVec[i] = 0;
    }
  }
  memcpy(bufB, BVec.data(), (BVec.size() * sizeof(B_DATATYPE)));

  // Initialize outputs; bufOut is results matrix plus tracing info
  char *bufOut = bo_out.map<char *>();
  std::vector<C_DATATYPE> CVec(C_VOLUME);
  memset(bufOut, 0, OUT_SIZE);

  if (verbosity >= 2) {
    std::cout << "DTYPE_IN  = " XSTR(DTYPE_IN) "\n";
    std::cout << "DTYPE_OUT = " XSTR(DTYPE_OUT) "\n";
    std::cout << "Verification tolerance " << abs_tol << " absolute, "
              << rel_tol << " relative.\n";
    std::cout << "A = \n";
    matmul_common::print_matrix(AVec, K);
    std::cout << "B = \n";
    matmul_common::print_matrix(BVec, N);
  }

  // Instruction buffer for DMA configuration
  void *bufInstr = bo_instr.map<void *>();
  memcpy(bufInstr, instr_v.data(), instr_v.size() * sizeof(int));

  bo_instr.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_a.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_b.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_out.sync(XCL_BO_SYNC_BO_TO_DEVICE);

  auto t3 = std::chrono::high_resolution_clock::now();
  std::cout << "setting first buffers takes  " << std::chrono::duration_cast<std::chrono::microseconds>(t3 - t2).count() << "us." << std::endl;

  auto new_xclbin = xrt::xclbin(vm["new_xclbin"].as<std::string>());
  auto new_xkernels = new_xclbin.get_kernels();
  auto new_xkernel = *std::find_if(new_xkernels.begin(), new_xkernels.end(),
                            [Node, verbosity](xrt::xclbin::kernel &k) {
                              auto name = k.get_name();
                              if (verbosity >= 1) {
                                std::cout << "Name: " << name << std::endl;
                              }
                              return name.rfind(Node, 0) == 0;
                            });
  auto new_kernelName = new_xkernel.get_name();
  device.register_xclbin(new_xclbin);
  xrt::hw_context context1(device, new_xclbin.get_uuid());

    std::chrono::high_resolution_clock::time_point t4 = std::chrono::high_resolution_clock::now();
  std::cout << "Registering new xclbin and get new kernal took " << std::chrono::duration_cast<std::chrono::microseconds>(t4 - t3).count() << "us." << std::endl;
    auto kernel1 = xrt::kernel(context1, new_kernelName);
    auto bo_instr1 = xrt::bo(device, instr_v1.size() * sizeof(int), XCL_BO_FLAGS_CACHEABLE, kernel1.group_id(1));
    auto bo_a1 =
        xrt::bo(device, A1_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel1.group_id(3));
    auto bo_b1 =
        xrt::bo(device, B1_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel1.group_id(4));
    auto bo_out1 =
        xrt::bo(device, OUT_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel1.group_id(5));
    
    A_DATATYPE *bufA1 = bo_a1.map<A_DATATYPE *>();    
    std::vector<A_DATATYPE> AVec1(A1_VOLUME);
    for (int i = 0; i < A1_VOLUME; i++) {
      // AVec[i] = matmul_common::get_random<A_DATATYPE>();
      AVec1[i] = i;
    }
    memcpy(bufA1, AVec1.data(), (AVec1.size() * sizeof(A_DATATYPE)));
    B_DATATYPE *bufB1 = bo_b1.map<B_DATATYPE *>();
    std::vector<B_DATATYPE> BVec1(B1_VOLUME);
    for (int i = 0; i < B1_VOLUME; i++) {
      if(i % N1 == i / N1) {
        BVec1[i] = 1;
      } else {
        BVec1[i] = 0;
      }
    }
    memcpy(bufB1, BVec1.data(), (BVec1.size() * sizeof(B_DATATYPE)));
    char *bufOut1 = bo_out1.map<char *>();
    void *bufInstr1 = bo_instr1.map<void *>();
    memcpy(bufInstr1, instr_v1.data(), instr_v1.size() * sizeof(int));
    std::vector<C_DATATYPE> CVec1(C1_VOLUME);
    bo_instr1.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    bo_a1.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    bo_b1.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    bo_out1.sync(XCL_BO_SYNC_BO_TO_DEVICE);
    // auto start1 = std::chrono::high_resolution_clock::now();
    // auto run1 = kernel1(3, bo_instr1, instr_v1.size(), bo_a1, bo_b1, bo_out1);
    // ert_cmd_state r = run1.wait();
    // auto stop1 = std::chrono::high_resolution_clock::now();
    // bo_out1.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    // memcpy(CVec1.data(), bufOut1, (CVec1.size() * sizeof(C_DATATYPE)));
    // matmul_common::print_matrix(CVec1, K);
  auto t5 = std::chrono::high_resolution_clock::now();
  std::cout << "setting second buffers takes  " << std::chrono::duration_cast<std::chrono::microseconds>(t5 - t4).count() << "us." << std::endl;


  unsigned num_iter = n_iterations + n_warmup_iterations;
  float npu_time_total = 0;
  float npu_time_min = 9999999;
  float npu_time_max = 0;

  int errors = 0;
  float macs = 2.0 * float(M) * float(K) * float(N);

  for (unsigned iter = 0; iter < 5; iter++) {

    if (verbosity >= 1) {
      std::cout << "Running Kernel (iteration " << iter << ").\n";
    }
    
    
    unsigned int opcode = 3;
    
    // Thread synchronization
    std::atomic<bool> thread1_done(false);
    std::atomic<bool> thread2_done(false);
    
   
    std::chrono::high_resolution_clock::time_point t1_launch, t1_done;
    std::chrono::high_resolution_clock::time_point t2_launch, t2_done;
    std::chrono::high_resolution_clock::time_point first_start, first_end, second_start, second_end, second_wait;
    ert_cmd_state r1, r2;
    
    auto start = std::chrono::high_resolution_clock::now();

    //**************** 2 threads ***************/
    // Launch first kernel in thread1
    // first_start = std::chrono::high_resolution_clock::now();
    // thread1 = std::thread([&]() {
    //     // t1_launch = std::chrono::high_resolution_clock::now();
    //     auto run = kernel(opcode, bo_instr, instr_v.size(), bo_a, bo_b, bo_out);
    //     r1 = run.wait();
    //     // t1_done = std::chrono::high_resolution_clock::now();
    //     thread1_done = true;
    // });
    // first_end = std::chrono::high_resolution_clock::now();
    // // Launch second kernel in thread2
    // thread2 = std::thread([&]() {
    //     // t2_launch = std::chrono::high_resolution_clock::now();
    //     auto run2 = kernel1(opcode, bo_instr1, instr_v1.size(), bo_a1, bo_b1, bo_out1);
    //     r2 = run2.wait();
    //     // t2_done = std::chrono::high_resolution_clock::now();
    //     thread2_done = true;
    // });
    // second_end = std::chrono::high_resolution_clock::now();
    // // // Wait for both threads to complete
    // thread1.join();
    // second_wait = std::chrono::high_resolution_clock::now();
    // thread2.join();
    //**************** single thread***************/
    // single thread launching two kernels :non blocking 
    first_start = std::chrono::high_resolution_clock::now();
    auto run = kernel(opcode, bo_instr, instr_v.size(), bo_a, bo_b, bo_out);
    first_end = std::chrono::high_resolution_clock::now();
    auto run2 = kernel(opcode, bo_instr1, instr_v1.size(), bo_a1, bo_b1, bo_out1);
    // auto run2 = kernel(opcode, bo_instr1, instr_v1.size(), bo_a1, bo_b1, bo_out1);
    second_end = std::chrono::high_resolution_clock::now();
    r1 = run.wait();
    second_wait = std::chrono::high_resolution_clock::now();
    r2 = run2.wait();

    // ******** blocking 
    // first_start = std::chrono::high_resolution_clock::now();
    // auto run = kernel(opcode, bo_instr, instr_v.size(), bo_a, bo_b, bo_out);
    // r1 = run.wait();
    // first_end = std::chrono::high_resolution_clock::now();
    // auto run2 = kernel1(opcode, bo_instr1, instr_v1.size(), bo_a1, bo_b1, bo_out1);
    // r2 = run2.wait();
    //********************************** */
    auto two_kernel_end = std::chrono::high_resolution_clock::now();
    // std::cout << "first " << std::chrono::duration_cast<std::chrono::microseconds>(first_end - first_start).count() << "us." << std::endl;
    // std::cout << "second " << std::chrono::duration_cast<std::chrono::microseconds>(second_end - first_end).count() << "us." << std::endl;
    // std::cout << "waiting time " << std::chrono::duration_cast<std::chrono::microseconds>(two_kernel_end - second_end).count() << "us." << std::endl;
    std::cout << "iteration " << iter << std::endl;
    std::cout << "Two kernel took " << std::chrono::duration_cast<std::chrono::microseconds>(two_kernel_end - start).count() << "us." << std::endl;
    std::cout << "First kernel took " << std::chrono::duration_cast<std::chrono::microseconds>(second_wait - first_start).count() << "us." << std::endl;
    std::cout << "Second kernel took " << std::chrono::duration_cast<std::chrono::microseconds>(two_kernel_end - second_wait).count() << "us." << std::endl;
   
    // Check kernel completion status
    if (r1 != ERT_CMD_STATE_COMPLETED || r2 != ERT_CMD_STATE_COMPLETED) {
        std::cout << "Kernel did not complete. Returned status: " 
                  << (r1 != ERT_CMD_STATE_COMPLETED ? "r1=" + std::to_string(r1) : "") 
                  << (r2 != ERT_CMD_STATE_COMPLETED ? " r2=" + std::to_string(r2) : "") 
                  << "\n";
        return 1;
    }
    
    // auto t1_elapsed = std::chrono::duration_cast<std::chrono::microseconds>(t1_done - t1_launch).count();
    // auto t2_elapsed = std::chrono::duration_cast<std::chrono::microseconds>(t2_done - t2_launch).count();
    
    // std::cout << "First kernel launch took " << std::chrono::duration_cast<std::chrono::microseconds>(t1_launch - start).count() << "us." << std::endl;
    // std::cout << "Second kernel launch took " << std::chrono::duration_cast<std::chrono::microseconds>(t2_launch - start).count() << "us." << std::endl;
    // std::cout << "First kernel took " << t1_elapsed << "us." << std::endl;
    // std::cout << "Second kernel took " << t2_elapsed << "us." << std::endl;

    auto stop = std::chrono::high_resolution_clock::now();
    // bo_out.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    // auto final_time = std::chrono::high_resolution_clock::now();
    // std::cout << "total takes  " << std::chrono::duration_cast<std::chrono::microseconds>(final_time - very_begin).count() << "us." << std::endl;

    if (iter < n_warmup_iterations) {
      /* Warmup iterations do not count towards average runtime. */
      continue;
    }

    if (0) {
      memcpy(CVec.data(), bufOut, (CVec.size() * sizeof(C_DATATYPE)));
      memcpy(CVec1.data(), bufOut1, (CVec1.size() * sizeof(C_DATATYPE)));
      if (verbosity >= 1) {
        if (do_verify_stochastic) {
          std::cout << "Verifying " << verify_stochastic_n_samples
                    << " random samples against reference matmul ..."
                    << std::endl;
        } else {
          std::cout << "Verifying against reference matmul ..." << std::endl;
        }
      }
      auto vstart = std::chrono::system_clock::now();
      if (do_verify_stochastic) {
        errors = matmul_common::verify_stochastic<A_DATATYPE, C_DATATYPE,
                                                  ACC_DATATYPE>(
            M, N, K, AVec, BVec, CVec, verify_stochastic_n_samples, verbosity,
            abs_tol, rel_tol, b_col_maj);
        errors += matmul_common::verify_stochastic<A_DATATYPE, C_DATATYPE,
                                                   ACC_DATATYPE>(
            M1, N1, K, AVec1, BVec1, CVec1, verify_stochastic_n_samples, verbosity,
            abs_tol, rel_tol, b_col_maj);
        
      } else {
        errors = matmul_common::verify<A_DATATYPE, C_DATATYPE, ACC_DATATYPE>(
            M, N, K, AVec, BVec, CVec, verbosity, abs_tol, rel_tol, b_col_maj);
        errors += matmul_common::verify<A_DATATYPE, C_DATATYPE, ACC_DATATYPE>(
            M1, N1, K, AVec1, BVec1, CVec1, verbosity, abs_tol, rel_tol, b_col_maj);
      }
      auto vstop = std::chrono::system_clock::now();
      float vtime =
          std::chrono::duration_cast<std::chrono::seconds>(vstop - vstart)
              .count();
      if (verbosity >= 1) {
        std::cout << "Verify time: " << vtime << " s." << std::endl;
      }
    } else {
      if (verbosity >= 1)
        std::cout << "WARNING: matmul results not verified." << std::endl;
    }

    float npu_time =
        std::chrono::duration_cast<std::chrono::microseconds>(stop - start)
            .count();

    npu_time_total += npu_time;
    npu_time_min = (npu_time < npu_time_min) ? npu_time : npu_time_min;
    npu_time_max = (npu_time > npu_time_max) ? npu_time : npu_time_max;
    
  }

  // Only write out trace of last iteration.
  if (trace_size > 0) {
    memcpy(CVec.data(), bufOut, (CVec.size() * sizeof(C_DATATYPE)));
    matmul_common::write_out_trace(((char *)bufOut) + C_SIZE, trace_size,
                                   vm["trace_file"].as<std::string>());
  }

  std::cout << std::endl
            << "Avg NPU matmul time: " << npu_time_total / n_iterations << "us."
            << std::endl;
  std::cout << "Avg NPU gflops: "
            << macs / (1000 * npu_time_total / n_iterations) << std::endl;

  std::cout << std::endl
            << "Min NPU matmul time: " << npu_time_min << "us." << std::endl;
  std::cout << "Max NPU gflops: " << macs / (1000 * npu_time_min) << std::endl;

  std::cout << std::endl
            << "Max NPU matmul time: " << npu_time_max << "us." << std::endl;
  std::cout << "Min NPU gflops: " << macs / (1000 * npu_time_max) << std::endl;

  if (!errors) {
      std::cout << "\nFirst PASS!\n\n";
    
    return 0;
  } else {
    std::cout << "\nError count: " << errors;
    if (do_verify_stochastic) {
      std::cout << " (out of " << verify_stochastic_n_samples
                << " random samples)";
    }
    std::cout << "\n\n";

    std::cout << "\nFailed.\n\n";

    return 1;
  }
}
