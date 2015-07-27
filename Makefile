CC=gcc
CFLAGS= -I./ -Wall

all:prog

%.o:%.c
	gcc $(CFLAGS) -m32 -c $? -o $@



prog: main.o lib.o
	gcc -m32 -o prog main.o lib.o

fork: fork.o lib.o syscalls.o
	gcc -m32 -o fork fork.o lib.o syscalls.o


%.o:%.S
	gcc -m32 -c $? -o $@

clean: 
	rm -f *.o prog fork *~
