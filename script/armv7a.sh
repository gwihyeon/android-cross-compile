#!/bin/bash

if ! cmake -DCMAKE_TOOLCHAIN_FILE=cmake_toolchain/armv7a.cmake .; then
    echo "CMake 오류"
    exit 1
fi

if ! make; then
    echo "Make 오류"
    exit 1
fi

echo "빌드 완료"
rm -rf CMakeCache.txt CMakeFiles cmake_install.cmake Makefile
echo "정리 완료"
