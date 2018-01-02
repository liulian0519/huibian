data segment
	num db 3fh,06h,5bh,4fh,66h,6dh,7dh,07h,7fh,79h
data ends

code segment
	assume ds:data,cs:code
start:
	mov ax,data
	mov ds,ax
	
	mov dx,0606h
	mov al,10010000b
	out dx,al
	
loop2:	mov dx,0602h
		in al,dx
		
		cmp al,00000000b
		mov si,offset num
		jz next
		
		mov bl,al
		sub bl,1
		and bl,al
		cmp bl,00000000b
		mov si,offset num+9
		jnz next
		
		mov si,offset num+1
loop1:	cmp al,00000001b
		jz next
		shr al,1
		inc si
		jmp loop1
		
next:	mov al,[si]
		mov dx,0600h
		out	dx,al
		
		jmp loop2
		
		mov ah,4ch
		int 21h
		
code ends
end start