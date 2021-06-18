assume cs:code,ds:data
data segment
      db    1,2,3,4,5,6,7,8 ;手动添加8个字节数据进入内存
      db    100 dup (0) ;循环添加内存数据大小
data ends

code segment
start:  mov ax,data
        mov ds,ax
        
code ends
end start
