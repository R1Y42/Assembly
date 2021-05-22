section .text 
        global start

_start:
        mov rcx, 10
        mov rax, 0
        nop


addloop:
        add qword[tot], rax
        add rax, 1
        dec rcx
        cmp rcx, 0
        jne addloop     ;jmp if RCX is not equals to 0
        nop


        ;ADD with loop
        mov eax, 0
        mov ecx, 10
        nop

myloop:
        add eax, ecx    ;EAX = EAX + ECX
        loop myloop     ;if(ECX>0){goto myloop ; ECX = ECX - 1}


        ;Terminate Program
        mov eax, 1
        int 0x80

section .data
        tot dq 0
