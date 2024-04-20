#!/bin/bash

source_name="$1"
target_name="$2"
output_name=$(echo "$source_name" | cut -d. -f1)

if [ -z "$source_name" ]; then
    echo "파일명을 입력! EX) ./aarch64.sh 파일명.c x86_64"
    exit 1
fi

if [ -z "$target_name" ]; then
    echo "타겟명을 입력! EX) ./aarch64.sh 파일명.c x86_64"
    exit 1
fi


if ! cmake -DINPUT_FILE_NAME="$source_name" -DOUTPUT_FILE_NAME="$output_name" -DCMAKE_TOOLCHAIN_FILE=./toolchain/"$target_name".cmake .; then
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

if [ "$target_name" == "arm32" ] || [ "$target_name" == "arm64" ] ; then
    if ! termux-elf-cleaner --api-level 24 "$output_name.$target_name" ; then
        echo "termux-elf-cleaner 오류"
    else
        echo "termux-elf-cleaner 완료"
    fi
fi

if ! adb push "$output_name.$target_name" /data/local/tmp; then
    echo "adb push 실패"
    exit 1
fi
echo "adb push 완료"