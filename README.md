# android-cross-compile

## 환경 구성
### A. JDK 설치
```
[JDK 설치]
$ sudo apt update  
$ sudo apt install openjdk-17-jdk
```
*****
### B. Qt Creator 설치 및 환경 구성
```
[Qt Creator 설치]  
1. https://download.qt.io -> official_releases -> online_installers -> qt-unified-linux-x64-online.run 다운로드(ubuntu에 설치)  
2. 다운로드 받은 qt-unified-linux-x64-online.run에 실행 권한 추가  
   $ chmod +x qt-unified-linux-x64-online.run
3. Select Components에서 Qt 6.5.3 버전 선택 후 설치
   Desktop gcc 64-bit, Android, Additional Libraries만 선택
```
![qt_setup](./image/qt_setup.png)
```
[Qt Creator Android Compile 환경 구성]
1. Eidt -> Preferences 선택
2. Devices -> Android 선택
3. JDK location에 JDK 경로 설정
4. Set Up SDK 버튼 클릭하여 ndk 설치 후 경로 설정
```
![qt_android_setup](./image/qt_android_setup.png)
*****
## C. scrcpy 설치
```
sudo apt update
sudo apt install scrcpy
```
https://github.com/Genymobile/scrcpy?tab=readme-ov-file
## D. termux-elf-cleaner
```
sudo apt update
sudo apt install automake

git clone https://github.com/termux/termux-elf-cleaner.git
cd termux-elf-cleaner
git checkout v2.2.1           # latest release version
aclocal                       # create aclocal.m4 and autom4te.cache/
automake --force-missing --add-missing
autoconf
./configure
make
sudo make install
```
https://github.com/termux/termux-elf-cleaner
![elf_warning](./image/elf_warning.png)
