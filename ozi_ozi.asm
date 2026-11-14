global _start

section .rodata
message: db "Ozi Ozi", 10
length equ $ - message

section .text
_start:
    mov rax, 1        ; sys_write
    mov rdi, 1        ; stdout
    mov rsi, message
    mov rdx, length
    syscall
    mov rax, 60       ; sys_exit
    xor rdi, rdi
    syscall
