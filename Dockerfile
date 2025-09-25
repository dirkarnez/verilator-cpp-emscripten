FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y git curl python3 xz-utils bzip2 libatomic1
RUN apt-get install -y verilator help2man perl python3 make g++ libfl2 libfl-dev zlib1g zlib1g-dev

WORKDIR /opt
RUN git clone --depth 1 https://github.com/emscripten-core/emsdk.git

WORKDIR /opt/emsdk
RUN ./emsdk install latest && ./emsdk activate latest

WORKDIR /work

CMD [ "bash", "./build.sh" ]
