FROM ubuntu:latest

ENV LC_CTYPE C.UTF-8

WORKDIR /ctf

RUN apt update -y && \
    apt install -y \
    build-essential \
    ltrace \
    strace \
    vim \
    tmux \
    wget \
    git \
    gdb \
    file \
    python3 \
    python3-pip \
    python3-dev \
    libssl-dev \
    libffi-dev 
RUN wget -O ~/.gdbinit-gef.py -q https://gef.blah.cat/py && \
echo source ~/.gdbinit-gef.py >> ~/.gdbinit
RUN python3 -m pip install pwntools

COPY . .
