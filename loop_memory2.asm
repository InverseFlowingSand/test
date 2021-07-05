;将内存 FFFF:0~FFFF:F 内存单元中的数据复制到 0:200~0:20f中。

assume cs:code

code segment
		;复制内容没有规定只能用字节型长度来移动，可以用字型数据，速度提升一倍。
start:	mov ax,0ffffh
		mov ds,ax

		mov ax,20h
		mov es,ax

		mov bx,0
		mov cx,8		;使用字型数据，所以只循环8次就行了。

s:		push ds:[bx]	;既然是操作字型数据，那么使用栈来操作，直接可以把寄存器都省了。
		pop es:[bx]
		add bx,2

		loop s

		mov ax,4c00h
		int 21h

code ends
end start
