#!/bin/bash
verilator --cc ./top.v && \
emcc -lembind -o ./sim_main.js ./sim_main.cpp
