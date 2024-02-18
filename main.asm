    global _start

exit_success:
    mov eax, 0x3c
    mov edi, 0
    syscall

print_hello:
    mov eax, 0x01
    mov edi, 0x01
    lea esi, [hello_str]
    mov edx, 14
    syscall
    ret

_start:
    mov ebx, 10
l1:
    call print_hello
    dec ebx
    cmp ebx, 0
    jnz l1
    jmp exit_success

    section .data
    hello_str db "hello, world!", 0xA
