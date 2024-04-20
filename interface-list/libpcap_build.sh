#!/bin/bash

target_name="$1"

wget https://www.tcpdump.org/release/libpcap-1.10.4.tar.xz
tar -xf libpcap-1.10.4.tar.xz
cd libpcap-1.10.4
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../../toolchain/"$target_name".cmake \
      -DDISABLE_DBUS=True \
      -DDISABLE_DPDK=True \
      -DCMAKE_INSTALL_PREFIX=../../sysroot \
      -DBUILD_SHARED_LIBS=False \
      ..

make
make install

rm libpcap-1.10.4.tar.xz