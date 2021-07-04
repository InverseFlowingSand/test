;将01234字节数据放入2000:1000内存中.

;Version_1
;使用最原始也是最直接的逐个赋值的方式（但是如果有100个数据要添加，岂不是很累）

assume cs:code

code segment
start:	mov ax,2000h
		mov ds,ax
		mov bx,1000h

		mov dl,0
		mov ds:[bx],dl
		
		inc dl
		inc bx
		mov ds:[bx],dl

		inc dl
		inc bx
		mov ds:[bx],dl

		inc dl
		inc bx
		mov ds:[bx],dl

		inc dl
		inc bx
		mov ds:[bx],dl

		mov ax,4c00h
		int 21

code ends
end start
