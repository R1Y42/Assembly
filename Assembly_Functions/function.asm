section .text
        global _start

_start:
        ;Parameter section start at 8th
        ;These Parameters Core passed using the stack
        push avg
        push sum
        
        ;These parameter passed using registers
        mov r9, last
        mov r8, md2
        mov rcx, md1
        mov rdx, first
        mov esi, dword[numElems]
        mov rdi, numbers

        ;Parameter section ends
        call numExtractor
        add rsp, 16

        ;exit
        mov eax, 1
        int 0x80

        global numExtractor

numExtractor:
        mov rax, 0
        mov r10, 0
        push rbp
        mov rbp, rsp
        push r10

sumLoop:
        add eax, dword[rdi+r10*4]           ;sum = sum + numbers

        inc r10
        cmp r10, rsi
        jl sumLoop

        ;call by reference req 2 steps
        mov r10, qword[rbp+16]
        mov dword[r10], eax
        mov r10, rsi
        dec r10
        mov eax, dword[rdi+r10*4]
        mov dword[r9], eax
        mov eax, dword[rdi]
        mov dword[rdx], eax

      
        ;add code get average and median's
        pop r10
        pop rbp
        ret


section .data
        avg dd 0
        sum dd 0
        md1 dd 0
        md2 dd 0
        last dd 0
        first dd 0
        numElems dd 5
        numbers dd 2,4,6,8,10


