;Version_1
;将01234字节数据放入2000:1000内存中.

assume cs:code

code segment
start:


		mov ax,4c00ch
		int 21

code ends
end start
