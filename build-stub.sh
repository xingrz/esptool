#!/bin/bash

export TOOLCHAIN_DIR=/project/toolchain

export ESP8266_BINDIR=$TOOLCHAIN_DIR/xtensa-lx106-elf/bin
export ESP32_BINDIR=$TOOLCHAIN_DIR/xtensa-esp32-elf/bin
export ESP32S2_BINDIR=$TOOLCHAIN_DIR/xtensa-esp32s2-elf/bin
export ESP32S3_BINDIR=$TOOLCHAIN_DIR/xtensa-esp32s3-elf/bin
export ESP32C3_BINDIR=$TOOLCHAIN_DIR/riscv32-esp-elf/bin

export PATH=$PATH:$ESP8266_BINDIR:$ESP32_BINDIR:$ESP32S2_BINDIR:$ESP32S3_BINDIR:$ESP32C3_BINDIR

pip install pyserial

./test/ci/setup_ci_build_env.sh
make -C flasher_stub V=1
