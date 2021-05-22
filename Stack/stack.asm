section .text
        global _start

_start:
        mov rbx, vals ; in gdb x/5d $rbx
        mov r15,  0   ;A Flag
        mov rcx, 3    ;How many time in stack

doPush:
        push qword [rbx+r15*8]
        inc r15
        loop doPush
        mov rbx, vals
        mov r15, 0
        mov rcx, 3

doPop:
        pop rax
        mov qword [rbx+r15*8],rax
        inc r15
        loop doPop

        ;Exit 
        mov eax, 1
        int 0x80

section .data
        vals dq 1000,1001,1002
