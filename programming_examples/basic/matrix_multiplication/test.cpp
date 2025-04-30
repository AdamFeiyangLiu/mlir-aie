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

constexpr long long verify_stochastic_threshold = 1024 * 1024 * 1024;
constexpr int verify_stochastic_n_samples = 1000;

// Verification tolerance
// See "Note on Numerical Tolerances" in README.md
float abs_tol = matmul_common::get_abs_tol<C_DATATYPE>();
float rel_tol = matmul_common::get_rel_tol<C_DATATYPE>();

namespace po = boost::program_options;

int main(int argc, const char *argv[]) {

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
  bool do_verify_stochastic =
      (long long)M * N * K > verify_stochastic_threshold;

  if (verbosity >= 1) {
    std::cout << "Matrix size " << M << "x" << K << "x" << N << std::endl;
  }

  int A_VOLUME = M * K;
  int B_VOLUME = N * K;
  int C_VOLUME = M * N;

  size_t A_SIZE = (A_VOLUME * sizeof(A_DATATYPE));
  size_t B_SIZE = (B_VOLUME * sizeof(B_DATATYPE));
  size_t C_SIZE = (C_VOLUME * sizeof(C_DATATYPE));

  size_t OUT_SIZE = C_SIZE + trace_size;

  std::vector<uint32_t> instr_v =
      matmul_common::load_instr_sequence(vm["instr"].as<std::string>());

  if (verbosity >= 1)
    std::cout << "Sequence instr count: " << instr_v.size() << "\n";

  // Start the XRT test code
  // Get a device handle
  unsigned int device_index = 0;
  auto device = xrt::device(device_index);

  // Load the xclbin
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
    AVec[i] = 1;
    // if(i < A_VO)
  }
  memcpy(bufA, AVec.data(), (AVec.size() * sizeof(A_DATATYPE)));
  B_DATATYPE *bufB = bo_b.map<B_DATATYPE *>();
  std::vector<B_DATATYPE> BVec(B_VOLUME);
  for (int i = 0; i < B_VOLUME; i++) {
    BVec[i] = matmul_common::get_random<B_DATATYPE>() * i;
    // Diagonal:
    // if(i % N == i / N) {
    //   BVec[i] = 1;
    // } else { 
    //   BVec[i] = 0;
    // }
  }
  auto xclbin2 = xrt::xclbin(vm["xclbin"].as<std::string>());
  auto xkernels2 = xclbin2.get_kernels();
  auto xkernel2 = *std::find_if(xkernels2.begin(), xkernels2.end(),
                               [Node, verbosity](xrt::xclbin::kernel &k) {
                                 auto name = k.get_name();
                                 return name.rfind(Node, 0) == 0;
                               });
  auto kernelName2 = xkernel2.get_name();
  device.register_xclbin(xclbin2);
  auto context2 = xrt::hw_context(device, xclbin2.get_uuid());
  auto kernel2 = xrt::kernel(context2, kernelName2);
  memcpy(bufB, BVec.data(), (BVec.size() * sizeof(B_DATATYPE)));
  // Initialize outputs; bufOut is results matrix plus tracing info
  char *bufOut = bo_out.map<char *>();
  std::vector<C_DATATYPE> CVec(C_VOLUME);

  memset(bufOut, 0, OUT_SIZE);


  //Make 2 more bos to simulate 3 kernel
  auto bo_instr2 = xrt::bo(device, instr_v.size() * sizeof(int),
                          XCL_BO_FLAGS_CACHEABLE, kernel.group_id(1));
  auto bo_a2 =
      xrt::bo(device, A_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(3));
  auto bo_b2 =
      xrt::bo(device, B_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(4));
  auto bo_out2 =
      xrt::bo(device, OUT_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(5));

  auto bo_instr3 = xrt::bo(device, instr_v.size() * sizeof(int),
                          XCL_BO_FLAGS_CACHEABLE, kernel.group_id(1));
  auto bo_a3 =
      xrt::bo(device, A_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(3));
  auto bo_b3 =
      xrt::bo(device, B_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(4));
  auto bo_out3 =
      xrt::bo(device, OUT_SIZE, XRT_BO_FLAGS_HOST_ONLY, kernel.group_id(5));

  // initlize bos 
  A_DATATYPE *bufA2 = bo_a2.map<A_DATATYPE *>();
  std::vector<A_DATATYPE> AVec2(A_VOLUME);
  for (int i = 0; i < A_VOLUME; i++) {
    AVec2[i] = matmul_common::get_random<A_DATATYPE>();
  }
  memcpy(bufA2, AVec2.data(), (AVec2.size() * sizeof(A_DATATYPE)));

  A_DATATYPE *bufA3 = bo_a3.map<A_DATATYPE *>();
  std::vector<A_DATATYPE> AVec3(A_VOLUME);
  for (int i = 0; i < A_VOLUME; i++) {
    AVec3[i] = matmul_common::get_random<A_DATATYPE>();
  }
  memcpy(bufA3, AVec3.data(), (AVec3.size() * sizeof(A_DATATYPE)));

  B_DATATYPE *bufB2 = bo_b2.map<B_DATATYPE *>();
  std::vector<B_DATATYPE> BVec2(B_VOLUME);
  for (int i = 0; i < B_VOLUME; i++) {
    BVec2[i] = matmul_common::get_random<B_DATATYPE>();
  }
  memcpy(bufB2, BVec2.data(), (BVec2.size() * sizeof(B_DATATYPE)));

  B_DATATYPE *bufB3 = bo_b3.map<B_DATATYPE *>();
  std::vector<B_DATATYPE> BVec3(B_VOLUME);
  for (int i = 0; i < B_VOLUME; i++) {
    BVec3[i] = matmul_common::get_random<B_DATATYPE>();
  }
  memcpy(bufB3, BVec3.data(), (BVec3.size() * sizeof(B_DATATYPE)));

  //output bos
  char *bufOut2 = bo_out2.map<char *>();
  std::vector<C_DATATYPE> CVec2(C_VOLUME);
  memset(bufOut2, 0, OUT_SIZE);

  //instruction bos
  char *bufInstr2 = bo_instr2.map<char *>();
  std::vector<int> instr_v2(instr_v.size());
  memcpy(bufInstr2, instr_v.data(), instr_v.size() * sizeof(int));

  char *bufInstr3 = bo_instr3.map<char *>();
  std::vector<int> instr_v3(instr_v.size());
  memcpy(bufInstr3, instr_v.data(), instr_v.size() * sizeof(int));


  char *bufOut3 = bo_out3.map<char *>();
  std::vector<C_DATATYPE> CVec3(C_VOLUME);
  memset(bufOut3, 0, OUT_SIZE);

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
  bo_instr2.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_a2.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_b2.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_out2.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_instr3.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_a3.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_b3.sync(XCL_BO_SYNC_BO_TO_DEVICE);
  bo_out3.sync(XCL_BO_SYNC_BO_TO_DEVICE);

  unsigned num_iter = n_iterations + n_warmup_iterations;
  float npu_time_total = 0;
  float npu_time_min = 9999999;
  float npu_time_max = 0;

  int errors = 0;
  float macs = 2.0 * float(M) * float(K) * float(N);
  
  for (unsigned iter = 0; iter < num_iter; iter++) {

    if (verbosity >= 1) {
      std::cout << "Running Kernel (iteration " << iter << ").\n";
    }
    auto start = std::chrono::high_resolution_clock::now();
    unsigned int opcode = 3;
    auto run = kernel(opcode, bo_instr, instr_v.size(), bo_a, bo_b, bo_out);
    auto run2 = kernel2(opcode, bo_instr2, instr_v.size(), bo_a2, bo_b2, bo_out2);
    auto run3 = kernel(opcode, bo_instr3, instr_v.size(), bo_a3, bo_b3, bo_out3);

    ert_cmd_state r  = run.wait();
    ert_cmd_state r2 = run2.wait();  
    ert_cmd_state r3 = run3.wait();
    
    
    bo_out.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    bo_out2.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    bo_out3.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    if (r != ERT_CMD_STATE_COMPLETED || r2 != ERT_CMD_STATE_COMPLETED || r3 != ERT_CMD_STATE_COMPLETED) {
      std::cout << "Kernel did not complete. Returned status: " << r << "\n";
      return 1;
    }
    
    // ert_cmd_state r3 = run3.wait();
    // bo_out3.sync(XCL_BO_SYNC_BO_FROM_DEVICE);
    auto stop = std::chrono::high_resolution_clock::now();
    if (iter < n_warmup_iterations) {
      /* Warmup iterations do not count towards average runtime. */
      continue;
    }
    C_DATATYPE *bufC = bo_out.map<C_DATATYPE *>();
    C_DATATYPE *bufC2 = bo_out2.map<C_DATATYPE *>();
    C_DATATYPE *bufC3 = bo_out3.map<C_DATATYPE *>();

  // Open a file for writing the output matrix
  // std::ofstream outFile("output_matrixC.csv");
  // if (!outFile) {
  //     std::cerr << "Error: Unable to open file for writing output matrix.\n";
  //     return -1;
  // }

  // // Write matrix dimensions
  // outFile << M << " " << N << "\n";

  // // Write matrix data row by row
  // for (int i = 0; i < M; i++) {
  //     for (int j = 0; j < N; j++) {
  //         outFile << bufC[i * N + j] << ",";
  //     }
  //     outFile << "\n";
  // }

  // Close the file
  // outFile.close();

    if (do_verify) {
      memcpy(CVec.data(), bufOut, (CVec.size() * sizeof(C_DATATYPE)));
      memcpy(CVec2.data(), bufOut2, (CVec2.size() * sizeof(C_DATATYPE)));
      memcpy(CVec3.data(), bufOut3, (CVec3.size() * sizeof(C_DATATYPE)));
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
        // errors += matmul_common::verify_stochastic<A_DATATYPE, C_DATATYPE,
        //                                           ACC_DATATYPE>(
        //     M, N, K, AVec2, BVec2, CVec2, verify_stochastic_n_samples, verbosity,
        //     abs_tol, rel_tol, b_col_maj);
        // errors += matmul_common::verify_stochastic<A_DATATYPE, C_DATATYPE,
        //                                           ACC_DATATYPE>(
        //     M, N, K, AVec3, BVec3, CVec3, verify_stochastic_n_samples, verbosity,
        //     abs_tol, rel_tol, b_col_maj);
      } else {
        errors = matmul_common::verify<A_DATATYPE, C_DATATYPE, ACC_DATATYPE>(
            M, N, K, AVec, BVec, CVec, verbosity, abs_tol, rel_tol, b_col_maj);
        // errors += matmul_common::verify<A_DATATYPE, C_DATATYPE, ACC_DATATYPE>(
        //     M, N, K, AVec2, BVec2, CVec2, verbosity, abs_tol, rel_tol, b_col_maj);
        // errors += matmul_common::verify<A_DATATYPE, C_DATATYPE, ACC_DATATYPE>(
        //     M, N, K, AVec3, BVec3, CVec3, verbosity, abs_tol, rel_tol, b_col_maj);
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
  std::cout << "total time: " << npu_time_total << std::endl;
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
    std::cout << "\nPASS!\n\n";
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
