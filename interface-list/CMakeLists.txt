cmake_minimum_required(VERSION 3.22)

project(example)

set(INPUT_FILE_NAME example.c CACHE STRING "INPUT FILE NAME")
set(OUTPUT_FILE_NAME exmale CACHE STRING "OUTPUT FILE NAME")

if(DEFINED CMAKE_ANDROID_ARCH_ABI)
	set(OUTPUT_FILE_NAME ${OUTPUT_FILE_NAME}.${ARCH})
endif()

include_directories(/home/cpp/android-cross-compile/interface-list/sysroot/include)
link_directories(/home/cpp/android-cross-compile/interface-list/sysroot/lib)

add_executable(${OUTPUT_FILE_NAME} ${INPUT_FILE_NAME})

target_link_libraries(${OUTPUT_FILE_NAME} pcap)