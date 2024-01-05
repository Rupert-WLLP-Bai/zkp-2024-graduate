#!/bin/bash

set -e -x

# Get the directory of the script
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

# Change the current directory to the script's directory
cd "$SCRIPT_DIR"

afl-clang++ -o hello_afl.out hello_afl.cc

# Check if the "crash" folder exists before running
if [ ! -d "crash" ]; then
    echo "crash folder does not exist, creating it"
    mkdir crash
fi

afl-fuzz -d -i in -o crash ./hello_afl.out