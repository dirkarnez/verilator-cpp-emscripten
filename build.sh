#!/bin/bash
verilator --cc ./top.v || exit 1
source /opt/emsdk/emsdk_env.sh
emcc -O3 -std=c++14 -I/usr/local/share/verilator/include -lembind -I./ sim_main.cpp --no-entry -sERROR_ON_UNDEFINED_SYMBOLS=0 -sINITIAL_MEMORY=128kb -sALLOW_MEMORY_GROWTH -sTOTAL_STACK=64kb -o sim_main.js
