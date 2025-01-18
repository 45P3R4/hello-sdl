CC = gcc
filename = program
warning_on = -Wall
include = -ISDL2/include
lib = -LSDL2/lib
l = -lmingw32 -lSDL2main -lSDL2
# gcc -Iinclude -Llib main.c -lmingw32 -lSDL2main -lSDL2

$(filename): main.o src.o
	$(CC) $(include) $(lib) -o $(filename).exe main.o src.o $(l)

main.o: main.c
	$(CC) $(warning_on) -c main.c

src.o: src.c
	$(CC) $(warning_on) -c src.c