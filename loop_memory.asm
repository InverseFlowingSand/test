;将01234字节数据放入2000:1000内存中.

;Version_3
;使用loop指令来控制循环次数。
assume cs:code

code segment
start:	mov ax,2000h
		mov ds,ax
		mov bx,1000h
		mov cx,4

		mov dl,0
		mov ds:[bx],dl
		
s:		inc dl
		inc bx
		mov ds:[bx],dl
		loop s

		mov ax,4c00h
		int 21h

code ends
end start
