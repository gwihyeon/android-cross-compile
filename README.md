# android-cross-compile

```
sudo apt install cmake
```
### CMake
CMAKE는 기본을 x86_64.cmake로 두고 armv7a와 aarch64에서 x86_64.cmake를 불러와서 기본 경로를 사용한다.  
Cmake를 통해 Makefile을 만들 때는 ToolChain을 사용하여 생성한다.
```
cmake -DCMAKE_TOOLCHAIN_FILE=cmake_toolchain/aarch64.cmake
```


Shell Script를 통해 컴파일부터 파일 정리까지
```
chmod +x cross-compile.sh

./cross-compile.sh [파일명].c [아키텍처명]
Example
1) ./cross-compile.sh Hello-World.c aarch64
2) ./cross-compile.sh Hello-World.c armv7a
3) ./cross-compile.sh Hello-World.c x86_64
```

#### 참고
https://lablk.blogspot.com/2017/10/build-system-cmake-x8664-linux-arm-linux.html
