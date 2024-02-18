#! /bin/sh
# as main.s -o main.o -g
nasm -f elf64 main.asm -o main.o -g
gcc -o asm main.o -nostdlib -no-pie -g -F dwarf
