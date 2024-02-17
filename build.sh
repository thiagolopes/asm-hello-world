#! /bin/sh
as main.s -o main.o
gcc -o asm main.o -nostdlib -no-pie
