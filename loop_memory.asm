;将01234字节数据放入2000:1000内存中.

;Version_2
;我们发现有3行代码重复写了4次，	其实意味着CPU向下读取/执行了4次内容一样的指令。
;我们使用jmp改变IP寄存器内容，每次让CPU跳到这个地址执行相同代码，就能让我们少写代码。
;但是还有个缺点是：我们不能控制重复的次数。

assume cs:code

code segment
start:	mov ax,2000h
		mov ds,ax
		mov bx,1000h

		mov dl,0
		mov ds:[bx],dl
		
s:		inc dl
		inc bx
		mov ds:[bx],dl
		jmp s

		mov ax,4c00h
		int 21

code ends
end start
