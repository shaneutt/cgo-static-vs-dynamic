all: static

clean:
	rm -f libtest.a libtest.so main test.o

static:
	gcc -c test.c
	ar -rcs libtest.a test.o
	go build -ldflags "-linkmode external -extldflags -static" main.go

dynamic:
	gcc -shared -o libtest.so test.c
	go build main.go

run: static
	./main
