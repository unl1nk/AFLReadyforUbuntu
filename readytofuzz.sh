# Changing the Directory

cd ~/


# Update & Upgrade the System

sudo apt-get update
sudo apt-get -y upgrade


# Install clang, gcc, gdb and build-essential to set-up AFL Fuzzer

sudo apt-get install build-essential
sudo apt-get install clang
sudo apt-get install gcc
sudo apt-get install gdb


# Getting AFL & Extracting AFL

wget http://lcamtuf.coredump.cx/afl/releases/afl-latest.tgz
tar xzf afl-latest.tgz
rm -rf afl-latest.tgz


# Installing AFL Fuzzer & Set-up LLVM Mode

cd ~/afl-*
make
sudo make install


# LLVM Mode Set-up

cd ~/afl-*/llvm_mode
LLVM_CONFIG=llvm-config-3.8 make
cd ../
sudo make install


# Core Pattern Thing

su root
echo core >/proc/sys/kernel/core_pattern
