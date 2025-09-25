FROM verilator/verilator:latest

RUN apt-get update
RUN apt-get install -y git curl python3 xz-utils bzip2 libatomic1
WORKDIR /opt
RUN git clone --depth 1 https://github.com/emscripten-core/emsdk.git
WORKDIR /opt/emsdk
RUN ./emsdk install latest && ./emsdk activate latest

