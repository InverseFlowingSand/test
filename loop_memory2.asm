;求FFFF:0 到 FFFF:F 字节型数据的和结果存放在dx中。
;注意：是字节型数据放在16位字型寄存器中。
assume cs:code

code segment
start:	mov ax,ffffh
		mov ds,ax

		mov bx,0
		mov dx,0
		mov ax,0	;用al读取字节型数据，用ax和dx相加。
		mov cx,16	;移动16次

a_num:	mov al,ds:[bx]
		add dx,ax
		inc bx
		loop a_num

		mov ax,4c00h
		int 21h

code ends
end start
