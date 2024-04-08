# android-cross-compile

```
sudo apt install cmake
```

# CMAKE는 기본을 x86_64.cmake로 두고 armv7a와 aarch64에서 x86_64.cmake를 불러와서 기본 경로를 사용한다.
Cmake를 통해 Makefile을 만들 때는 ToolChain을 사용하여 생성한다.
```
cmake -DCMAKE_TOOLCHAIN_FILE=cmake_toolchain/aarch64.cmake
```


Shell Script를 통해 컴파일부터 파일 정리까지
```
chmod +x x86_64.sh
chmod +x armv7a.sh
chmod +x aarch64.sh

./x86_64.sh
./armv7a.sh
./aarch64.sh
```
