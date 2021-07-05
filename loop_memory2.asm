;将内存 FFFF:0~FFFF:F 内存单元中的数据复制到 0:200~0:20f中。

assume cs:code

code segment
		;上个版本CPU在loop中不断的做设置段寄存器的操作，其实是很浪费CPU的。
		;可以把寄存器在外面设置好。
start:	mov ax,0ffffh
		mov ds,ax

		mov ax,20h
		mov es,ax

		mov bx,0
		mov cx,16

s:		mov dl,ds:[bx]
		mov es:[bx],dl
		inc bx

		loop s

		mov ax,4c00h
		int 21h

code ends
end start
