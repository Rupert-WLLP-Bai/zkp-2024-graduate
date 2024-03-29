# 使用Ubuntu 22.04
FROM ubuntu:22.04

# 设置软件源
ARG ARCH
RUN if [ "$ARCH" = "arm" ]; then \
        sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu\//http:\/\/mirrors.ustc.edu.cn\/ubuntu\//g' /etc/apt/sources.list; \
    else \
        sed -i 's/http:\/\/archive.ubuntu.com\/ubuntu\//http:\/\/mirrors.ustc.edu.cn\/ubuntu\//g' /etc/apt/sources.list; \
    fi

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    wget \
    axel \
    git \
    zsh \
    htop \
    vim \
    tmux \
    tree \
    llvm-14 \
    clang-14 \
    clang-format-14 \
    clang-tidy-14 \
    clang-tools-14 \
    clangd-14 \
    "afl*" \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set up circom 2 and snarkjs
# 1. rust
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
# 2. circom
RUN git clone https://github.com/iden3/circom.git
RUN cd circom && cargo build --release && cargo install --path .
# 3. snarkjs
# 3.1 nodejs 20
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs
# 3.2 snarkjs
RUN npm install -g snarkjs

# Set up Oh My Zsh
RUN git clone https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git &&\
    cd ohmyzsh/tools &&\
    REMOTE=https://mirrors.tuna.tsinghua.edu.cn/git/ohmyzsh.git sh install.sh

# Set up the default shell to Zsh
RUN chsh -s /usr/bin/zsh

# mount ssh key
RUN mkdir -p /root/.ssh && \
    ssh-keyscan github.com >> /root/.ssh/known_hosts && \
    chmod 700 /root/.ssh && \
    chmod 600 /root/.ssh/*
