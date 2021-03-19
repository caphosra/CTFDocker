# CTF tools on Docker

[![Deploy image](https://github.com/capra314cabra/CTFDocker/workflows/Deploy%20image/badge.svg?branch=master)](https://github.com/capra314cabra/CTFDocker)
[![Docker Image Size](https://img.shields.io/docker/image-size/capra314cabra/ctf/latest)](https://hub.docker.com/r/capra314cabra/ctf)

This is a docker image for Capture The Flag and many useful and famous tools are on this image.  

Just run the following command to get it started!
```bash
docker run --rm -it capra314cabra/ctf:latest
```

## Base image

Ubuntu 20.04 (LTS)

## Installed tools

Sorted in alphabetical order.

|Tools|Versions|Descriptions|Links|latest|sagemath|
|:---|:---:|:---|:---|:---:|:---:|
|build-essential|12.8|Standard tools available on ubuntu.|[Ubuntu package](https://packages.ubuntu.com/focal/build-essential)|:heavy_check_mark:|:heavy_check_mark:|
|pwntools|4.3.1|A CTF framework and exploit development library.|[GitHub](https://github.com/Gallopsled/pwntools)|:heavy_check_mark:|:heavy_check_mark:|
|python|3.8.2|Interpreter for python.|[Homepage](https://www.python.org/)|:heavy_check_mark:|:heavy_check_mark:|
|radare2|2.3.0|A portable reverse engineering framework.|[GitHub](https://github.com/radareorg/radare2)|:heavy_check_mark:|:heavy_check_mark:|
|RsaCtfTool|`08e53aa`|A RSA multi attacks tool.|[GitHub](https://github.com/Ganapati/RsaCtfTool)|:heavy_check_mark:|:heavy_check_mark:|
|sagemath|9.0|An open source mathematical software.|[Homepage](https://www.sagemath.org/)||:heavy_check_mark:|
|vim|8.1.2269|A CUI code editor.|[Homepage](https://www.vim.org/)|:heavy_check_mark:|:heavy_check_mark:|
|wget|1.20.3|A tool that retrieves files from the web.|[Homepage](https://www.gnu.org/software/wget/)|:heavy_check_mark:|:heavy_check_mark:|

Note that `RsaCtfTool.py` is located in `~/RsaCtfTool/`.  
I think you find it out even if I didn't tell that since you must be a CTF player :P

I'd like to add more but you know, it's a kind of trade off.  
The more installed, the heavier it gets.  
(It doesn't mean that you cannot make any PRs. On the contrary, I always welcome your PRs!)

## Optional

You can use an image which is already installed sagemath,
which is required to use all the features of RsaCtfTool, by typing following commands.  
Note that it takes up much space.

[![Deploy image with sage](https://github.com/capra314cabra/CTFDocker/workflows/Deploy%20image%20with%20sage/badge.svg)](https://github.com/capra314cabra/CTFDocker)
[![Docker Image Size](https://img.shields.io/docker/image-size/capra314cabra/ctf/sagemath)](https://hub.docker.com/r/capra314cabra/ctf)

```
docker run --rm -it capra314cabra/ctf:sagemath
```

## Why docker

It is easy to share and never let your environment be too complex.
