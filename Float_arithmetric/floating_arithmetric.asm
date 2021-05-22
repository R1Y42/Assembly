section .text
        global _start

_start:
        movss xmm0, dword [sPVar1]
        movss dword [sPVar2], xmm0
        
        movss xmm1, dword [sPVar2]
        movsd xmm2, qword [dPVar1]
        movsd qword [dPVar2], xmm2
        movsd xmm3, qword [dPVar2]

        ;DW int -> scalar single precision (F-P)
        mov eax, dword [sPVarint]
        cvtsi2ss xmm0, eax

        ;To sum two memory locations two operations are needed
        movss xmm0, dword [sPVar3]
        addss xmm0, dword [sPVar4]
        movss dword [sPtot], xmm0

        ;This will not work!
        ;addss dword[sPVar3],dword[sPVar4]
        ;MXCSR reg will change now
        movss xmm0, dword [sPVar1]
        divss xmm0, dword [sPDiv]

section .data
        sPVar1 dd 1.41
        sPVar2 dd 0.0
        
        dPVar1 dq 2.82
        dPVar2 dq 0.0
        
        sPVarint dd 10
        sPVar3 dd 55.21
        sPVar4 dd 11.25
        sPtot dd 0
        sPDiv dd 0

