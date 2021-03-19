FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV PATH="/root/RsaCtfTool:${PATH}"

RUN \
    ########################################################
    #
    # Basic tools
    #
    ########################################################
    cd /; \
    apt update; \
    apt upgrade -y; \
    apt install -y \
        build-essential \
        git \
        python3 \
        python3-pip \
        vim \
        wget; \
    pip3 install -U pip; \
    ########################################################
    #
    # radare2 (https://github.com/radareorg/radare2)
    #
    ########################################################
    apt install -y \
        radare2; \
    ########################################################
    #
    # pwntools (https://github.com/Gallopsled/pwntools)
    #
    ########################################################
    pip3 install pwntools; \
    ########################################################
    #
    # RSA CTF Tool (https://github.com/Ganapati/RsaCtfTool)
    #
    ########################################################
    mkdir ~/RsaCtfTool; \
    cd ~/RsaCtfTool; \
    apt install -y \
        libgmp3-dev \
        libmpc-dev; \
    git clone https://github.com/Ganapati/RsaCtfTool.git .; \
    git checkout 08e53aa9e1de8e1cb17f160bf60e7bab8d507fe5; \
    pip3 install -r "requirements.txt"; \
    rm -rf ./.git/* ./.github/* ./examples/*; \
    ########################################################
    #
    # Clean waste
    #
    ########################################################
    apt remove -y --purge \
        git; \
    apt clean; \
    rm -rf /var/lib/apt/lists/*;
