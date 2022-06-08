demo:mylib.o mymain.o
	gcc -o demo mylib.o mymain.o

mylib.o:mylib.c myhead.h
	gcc -c ./myinclude/mylib.c -I./myinclude/myhead.h

mymain.o:mymain.c myhead.h
	gcc -c ./src/mymain.c -I./myinclude/myhead.h

clean:
	rm demo mylib.o mymain.o