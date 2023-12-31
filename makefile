cc = g++ -g -Wall -Wextra -c -o
lc = g++ -Wall -Wextra -g -o

build: build/main.o
	${lc} build/app.bin build/*.o

clean:
	rm -rf build
	mkdir build

build/main.o: src/main.cpp
	${cc} build/main.o src/main.cpp 

