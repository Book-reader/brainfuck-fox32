all: out/bfc.fxf brainfrick.img
	ryfs.py add brainfrick.img out/bfc.fxf

run: all
	fox32 --disk ../fox32/fox32os/fox32os.img --disk ./brainfrick.img

out/bfc.fxf: build/bfc.o build/fox32os.o build/fox32rom.o
	xrlink link out/bfc.fxf build/bfc.o build/fox32os.o build/fox32rom.o

build/bfc.o: build/bfc.asm
	xrasm build/bfc.asm build/bfc.o target=fox32

build/bfc.asm: BrainfuckCompiler.jkl fox32os.hjk fox32rom.hjk
	jkl BrainfuckCompiler.jkl build/bfc.asm target=fox32

build/fox32rom.o: build/fox32rom.asm
	xrasm build/fox32rom.asm build/fox32rom.o target=fox32

build/fox32rom.asm: fox32rom.jkl
	jkl fox32rom.jkl build/fox32rom.asm target=fox32

build/fox32os.o: build/fox32os.asm
	xrasm build/fox32os.asm build/fox32os.o target=fox32

build/fox32os.asm: fox32os.jkl
	jkl fox32os.jkl build/fox32os.asm target=fox32

brainfrick.img:
	ryfs.py create brainfrick.img -l bf -s 16000000
	ryfs.py add brainfrick.img ./files/hello.b
