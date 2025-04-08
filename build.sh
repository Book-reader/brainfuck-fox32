#!/usr/bin/env bash

./bf2fox32 "${1}.b" "${1}_b.asm"

fox32asm "${1}_b.asm" "${1}.fxf"

ryfs.py add brainfrick.img "${1}.fxf"
