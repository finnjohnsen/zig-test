
build:
	zig build-exe hello.zig

build-run: build
	./hello

clean:
	rm -f hello
	rm -f *.o

# Shortcuts
b: build
br: build-run
c: clean

cbr: c br
