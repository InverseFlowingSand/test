;将内存 FFFF:0~FFFF:F 内存单元中的数据复制到 0:200~0:20f中。

assume cs:code

code segment
start:	mov ax,0ffffh
		mov ds,ax

		mov bx,0
		mov cx,16

		;ds不断的切换成目的地址和源地址来指向数据的来源和存放的位置
		;所以我们要临时存储一下源地址，让它改变了且存储完数据后在变回来拿数据
s:		push ds		;其实使用栈的时候，需要设置栈段的，不然还是像是直接修改内存中的内容一样。
		mov dl,ds:[bx]

		mov ax,20h
		mov ds,ax
		mov ds:[bx],dl
		inc bx
		pop ds
		loop s

		mov ax,4c00h
		int 21h

code ends
end start
