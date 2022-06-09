#VPATH = src:../myinclude
vpath %.h myinclude
vpath %.c src
vpath %.c myinclude

demo:mylib.o mymain.o
	gcc -o demo mylib.o mymain.o

mylib.o:mylib.c myhead.h
	gcc -c mylib.c myhead.h

mymain.o:mymain.c myhead.h
	gcc -c mymain.c myhead.h

clean:
	rm demo mylib.o mymain.o
