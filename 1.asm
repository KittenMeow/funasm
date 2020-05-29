section .text
    global _start
_start:
    nop
    mov cx, 5
    push cx
    jmp loop
    nop
loop:
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, msglen
    int 80h

    pop cx
    dec cx
    push cx
    jnz loop
    
    jmp end


end:
    mov eax, 1
    mov ebx, 0
    int 80h

    


section .data
    msg: db "Hello, world!", 10
    msglen: equ $-msg
