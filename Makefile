
build:
	zig build-exe hello.zig

build-run: build
	./hello

clean:
	rm -f hello
	rm -f *.o

test:
	zig test hello_test.zig

# Shortcuts
b: build
br: build-run
c: clean
t: test

cbr: c br
