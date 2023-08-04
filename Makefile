
build:
	zig build-exe hello.zig

# LLVM cross compile 
build-win:
	zig build-exe hello.zig -target x86_64-windows

build-run: build
	./hello

clean:
	rm -f hello
	rm -f *.exe
	rm -f *.o
	rm -f *.obj
	rm -Rf *.pdb
	rm -Rf zig-cache

test:
	zig test hello_test.zig

# Shortcuts
b: build
br: build-run
c: clean
t: test

cbr: c br
