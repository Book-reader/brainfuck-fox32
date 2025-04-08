#!/usr/bin/env bash

./bf2fox32 "files/${1}.b" "build/${1}_b.asm"

fox32asm "build/${1}_b.asm" "out/${1}.fxf"

ryfs.py add brainfrick.img "out/${1}.fxf"
