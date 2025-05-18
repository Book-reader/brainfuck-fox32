# Brainfuck for the fox32 fantasy cpu

it is really bad please don't look too closely

## usage (fox32 native interpreter):

### building

```console
$ fox32asm brainfrick.asm bf.fxf
$ ryfs.py add <disk image> bf.fxf
$ ryfs.py add <disk image> files/<filename>.b
```

### running (inside fox32)

```console
$ disk 1 # assuming it's in the first disk
$ bf <filename>.b
```

## usage (bf2fox32 compiler)

### building

```console
$ c3c compile bf2fox32.c3
```

### running

```console
$ ./bf2fox32 <filename>.b <filename>.asm
$ fox32asm <filename>.asm <filename.fxf>
$ ryfs.py add <disk image> <filename>.fxf
```
