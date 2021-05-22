#!/bin/bash

FILENAME=${basename--$1}
EXTENSION=${FILENAME##*.}
FILENAME=${FILENAME%.*}

rm -f *.o
nasm -f elf64 -F dwarf $1
ld -m elf_x86_64 -o ${FILENAME} ${FILENAME}.o
rm -f ${FILENAME}.o
