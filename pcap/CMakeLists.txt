cmake_minimum_required(VERSION 3.11)

project(Example)

SET(SOURCE example.c CACHE STRING "외부에서 받아온 파일명")
SET(OUTPUT example CACHE STRING "외부에서 받아온 파일명")

SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -ffunction-sections -fdata-sections -Wl,--gc-sections -static")

include_directories(/home/kali/android-cross-compile/sysroot/include)
link_directories(/home/kali/android-cross-compile/sysroot/lib)


IF(DEFINED CMAKE_SYSTEM_PROCESSOR)
    SET(OUTPUT ${OUTPUT}.${CMAKE_SYSTEM_PROCESSOR})
ELSE()
    SET(OUTPUT ${OUTPUT}.x86_64)
ENDIF()

ADD_EXECUTABLE(${OUTPUT} ${SOURCE})


TARGET_LINK_LIBRARIES(${OUTPUT} pcap)

