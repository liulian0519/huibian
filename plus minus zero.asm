DATAS SEGMENT
    tab db -1,1,-2,2,-3,-4,5,0,-6,7,-8
    plus db 0
    minus db 0
    zero db 0
    ;此处输入数据段代码  
DATAS ENDS

STACKS SEGMENT
    ;此处输入堆栈段代码
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    MOV AX,DATAS
    MOV DS,AX
    mov si,0
    xor al,al
    mov cx,11
    next: mov al,tab[si]
    	  cmp al,0
    	  jg is_plus
    	  je is_zero
    is_minus:inc minus
    		jmp next1
    is_plus:inc plus
    		jmp next1
    is_zero:inc zero
    next1:inc si
    	  dec cx
    	  jnz next;此处输入代码段代码
    	  
    mov dl,30h
    mov ah,2
    int 21h
    MOV AH,4CH
    INT 21H
CODES ENDS
    END START

