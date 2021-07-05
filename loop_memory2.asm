;将内存 FFFF:0~FFFF:F 内存单元中的数据复制到 0:200~0:20f中。

assume cs:code

code segment
start:
		mov bx,0
		mov cx,16

		;没有设在栈段就直接操作是很危险的，要么设在栈段，要么不使用栈
		;下面就不使用栈来操作。
		;就频繁的更段寄存器就行了
s:		mov ax,0ffffh
		mov ds,ax
		mov dl,ds:[bx]

		mov ax,20h
		mov ds,ax
		mov ds:[bx],dl
		inc bx

		loop s

		mov ax,4c00h
		int 21h

code ends
end start
