# CTF tools on Docker

This is a docker image for Capture The Flag and many useful and famous tools are on this image.  

Just run the following command to get it started!
```bash
docker run --rm -it capra314cabra/ctf
```

## Base image

Ubuntu 18.04 (LTS)

## Installed tools

Sorted in alphabetical order.

- build-essential
- pwntools ([GitHub](https://github.com/Gallopsled/pwntools))
- python3
- radare2 ([GitHub](https://github.com/radareorg/radare2))
- RSA CTF Tool ([GitHub](https://github.com/Ganapati/RsaCtfTool))
- wget

Note that `RsaCtfTool.py` is located in `~/RsaCtfTool/`.  
I think you find it out even if I didn't tell that since you must be a CTF player :P

I'd like to add more but you know, it's a kind of trade off.  
The more installed, the heavier it gets.  
(It doesn't mean that you cannot make any PRs. On the contrary, I always welcome your PRs!)

## Why docker

It is easy to share and never let your environment be too complex.
