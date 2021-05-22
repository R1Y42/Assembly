section .text
        global _start

_start:
        ;Subtraction
        mov  al, byte[val1]
        sub  al, byte[val2]
        
        ;Decrement operator
        dec  al
        
        ;signed multiplication
        mov  ax, word[val3]
        imul  ax, word[val4]
        
        ;unsigned division
        mov ax, 0
        mov al, byte[val5]
        div byte[val6]
        
        ;total in AL & module in AH
        ;the following does nothing
        nop

        mov eax, 1
        int 0x80

section .data
        val1 db 85
        val2 db 65
        val3 dd -53000
        val4 dd 15000
        val5 db 59
        val6 db 19
