#!/bin/bash

set -e -x
afl-clang++ -o hello_afl.out hello_afl.cc

# 运行之前检查是否存在crash文件夹，如果不存在则创建
if [ ! -d "crash" ]; then
    echo "crash folder not exist, create it"
    mkdir crash
fi

afl-fuzz -d -i in -o crash ./hello_afl.out