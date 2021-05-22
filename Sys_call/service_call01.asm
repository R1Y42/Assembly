section .text
        global _start

_start:
        mov rax, ConsoleEW
        mov rdi, STDOUT
        mov rsi, message
        mov rdx, qword[messagelen]
        syscall

        ;exit
        ;mov eax, 1
        ;int 0x80

        mov rax, 60
        mov rdi, 0
        syscall

section .data
        STDOUT equ 1
        ConsoleEW equ 1
        
        ;Include new line character
        message db "Hello world", 0x0a
        
        ;Count = string length throughline
        messagelen db 12



