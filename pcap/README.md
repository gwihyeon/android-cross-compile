# 안드로이드용 libpcap 빌드부터 실행까지

```
wget https://www.tcpdump.org/release/libpcap-1.10.4.tar.gz  
tar -xvf libpcap-1.10.4.tar.gz  
cd libpcap-1.10.4  
mkdir bulid  
cd build  

cmake -DCMAKE_TOOLCHAIN_FILE=/home/kali/android-cross-compile/cmake_toolchain/aarch64.cmake  -DCMAKE_INSTALL_PREFIX=/home/kali/android-cross-compile/sysroot ..
make
make install
```
```
cd /home/kali/android-cross-compile
./cross-compile.sh interface-list.c aarch64

adb push interface-list.aarch64 /data/local/tmp
```
