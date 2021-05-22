section .text
        global _start

_start:
        ;Read Input
        mov rax, GETUSERINPUT
        mov rdi, STDIN
        mov rsi, buffer
        mov rdx, buffersize
        syscall

        ;Write user input back
        mov rdx, rax
        mov rax, WRITEUSERINPUT
        mov rsi, STDOUT
        mov rsi, buffer
        syscall

        mov rax, 60
        mov rdi, 0
        syscall

section .data
        GETUSERINPUT equ 0
        WRITEUSERINPUT equ 1
        STDIN equ 0
        STDOUT equ 1


section .bss
        buffersize equ 32
        buffer resb buffersize


