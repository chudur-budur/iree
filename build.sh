#!/usr/bin/bash

# Configure
cmake -G Ninja -B ../iree-build/ -S . \
    -DCMAKE_BUILD_TYPE=RelWithDebInfo \
    -DIREE_ENABLE_ASSERTIONS=ON \
    -DIREE_ENABLE_SPLIT_DWARF=ON \
    -DIREE_ENABLE_THIN_ARCHIVES=ON \
    -DCMAKE_C_COMPILER=$(which clang) \
    -DCMAKE_CXX_COMPILER=$(which clang++) \
    -DIREE_ENABLE_LLD=ON \
    -DIREE_TARGET_BACKEND_CUDA=OFF \
    -DIREE_HAL_DRIVER_CUDA=OFF

# Build
cmake --build ../iree-build/
