# cmake_project_template

[![Build Status](https://travis-ci.org/Shviderskiy/cmake_project_template.svg?branch=WIP)](https://travis-ci.org/Shviderskiy/cmake_project_template)

description

## Clone repository and update submodules
```bash
git clone https://github.com/Shviderskiy/cmake_project_template.git
cd cmake_project_template
git submodule update --init --recursive
```

## Install Conan
https://conan.io/downloads.html

## Add Conan remote
```bash
conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan
```

## Create directory for build
```bash
mkdir build
cd build
```

## Install dependencies, configure and build project

### On Windows with MSVC

- Debug x64:
  ```bash
  conan install .. --profile ../conan_profiles/msvc15_debug_x64.txt --build missing

  cmake .. -DCMAKE_BUILD_TYPE=Debug -DCMAKE_GENERATOR_PLATFORM=x64

  cmake --build . --config Debug
  ```
- Release x64:
  ```bash
  conan install .. --profile ../conan_profiles/msvc15_release_x64.txt --build missing

  cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_GENERATOR_PLATFORM=x64

  cmake --build . --config Release
  ```

### On Linux with GCC

- Debug x64:
  ```bash
  conan install .. --profile ../conan_profiles/gcc6.2_debug_x64.txt --build missing

  cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS="-m64"
  cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS="-m64"

  cmake --build . --config Debug
  ```
- Release x64:
  ```bash
  conan install .. --profile ../conan_profiles/gcc6.2_release_x64.txt --build missing

  cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-m64"
  cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-m64"

  cmake --build . --config Release
  ```

### On Windows with MinGW

- Set path to gcc (for example Qt toolset):
  - cmd:
    ```bash
    set PATH=C:\Qt\Tools\mingw730_64\bin;%PATH%
    ```
  - PowerShell:
    ```bash
    $Env:path += ";C:\Qt\Tools\mingw730_64\bin"
    ```
  - git bash:
    ```bash
    set PATH="$PATH:/c/Qt/Tools/mingw730_64/bin"
    ```

- Debug x64:
  ```bash
  conan install .. --profile ../conan_profiles/mingw7.3_debug_x64.txt --build missing

  cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS="-m64"
  cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS="-m64"

  cmake --build . --config Debug
  ```
- Release x64:
  ```bash
  conan install .. --profile ../conan_profiles/mingw7.3_release_x64.txt --build missing

  cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-m64"
  cmake .. -G "MinGW Makefiles" -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS="-m64"

  cmake --build . --config Release
  ```
