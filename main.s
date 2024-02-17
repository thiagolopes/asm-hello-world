.global _start
.intel_syntax noprefix

exit_success:
    MOV rax, 0x3c
    MOV rdi, 0
    SYSCALL

print_hello:
    MOV rax, 0x01
    MOV rdi, 0x01
    LEA rsi, [hello_str]
    MOV rdx, 14
    SYSCALL
    RET

_start:
    CALL print_hello
    JMP exit_success

.section .data
    hello_str: .asciz "hello, world!\n"
