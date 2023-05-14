Simple Dockerfile config for CTF's pwn challenges

## Usage
For Mac M1
```bash
docker-compose up -d
docker run --rm -it --platform=linux/amd64 ctf:ubuntu /bin/bash
```

## Tools Included
- vim
- tmux
- pwntools
- ltrace
- strace
- gdb
- gef