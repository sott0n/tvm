#!/bin/bash
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

set -e
set -u

mkdir -p build
cd build
cp ../cmake/config.cmake .

echo set\(USE_SORT ON\) >> config.cmake
echo set\(USE_MICRO ON\) >> config.cmake
echo set\(USE_MICRO_STANDALONE_RUNTIME ON\) >> config.cmake
echo set\(USE_PROFILER ON\) >> config.cmake
echo set\(USE_DNNL_CODEGEN ON\) >> config.cmake
echo set\(USE_ARM_COMPUTE_LIB ON\) >> config.cmake
echo set\(USE_LLVM llvm-config-11\) >> config.cmake
echo set\(USE_NNPACK ON\) >> config.cmake
echo set\(NNPACK_PATH /NNPACK/build/\) >> config.cmake
echo set\(USE_ANTLR ON\) >> config.cmake
echo set\(CMAKE_CXX_COMPILER g++\) >> config.cmake
echo set\(CMAKE_CXX_FLAGS -Werror\) >> config.cmake
echo set\(HIDE_PRIVATE_SYMBOLS ON\) >> config.cmake
echo set\(USE_VTA_TSIM ON\) >> config.cmake
echo set\(USE_VTA_FSIM ON\) >> config.cmake
echo set\(USE_TFLITE ON\) >> config.cmake
echo set\(USE_TENSORFLOW_PATH \"/tensorflow\"\) >> config.cmake
echo set\(USE_FLATBUFFERS_PATH \"/flatbuffers\"\) >> config.cmake
echo set\(USE_ETHOSN /opt/arm/ethosn-driver\) >> config.cmake
echo set\(USE_ETHOSN_HW OFF\) >> config.cmake
echo set\(USE_CMSISNN ON\) >> config.cmake
echo set\(USE_VITIS_AI ON\) >> config.cmake
echo set\(USE_VERILATOR ON\) >> config.cmake
echo set\(USE_LIBBACKTRACE ON\) >> config.cmake
echo set\(USE_CCACHE OFF\) >> config.cmake
