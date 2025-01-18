CC = gcc
filename = program
warning_on = -Wall
include = -ISDL2/include
lib = -LSDL2/lib
l = -lmingw32 -lSDL2main -lSDL2
# gcc -Iinclude -Llib main.c -lmingw32 -lSDL2main -lSDL2

$(filename): main.o src.o
	$(CC) $(include) $(lib) -o $(filename).exe build/main.o build/src.o $(l)

main.o: src/main.c
	$(CC) $(warning_on) -c src/main.c -o build/main.o

src.o: src/src.c
	$(CC) $(warning_on) -c src/src.c -o build/src.o