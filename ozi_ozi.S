.section .rodata
message:
    .ascii "Ozi Ozi\n"
length = . - message

.section .text
.globl _start
_start:
    mov $1, %rax      # Linux x86-64 write
    mov $1, %rdi      # stdout
    lea message(%rip), %rsi
    mov $length, %rdx
    syscall
    mov $60, %rax     # exit
    xor %rdi, %rdi
    syscall
