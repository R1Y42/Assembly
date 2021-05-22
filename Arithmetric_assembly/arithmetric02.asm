section .text
        global _start

_start
        ;First 4 bytes
        mov eax, dword[V1]
        ;Last 4 bytes
        mov edx, dword[V1+4]
        add eax, dword[V2]

        ;Add second part and carry bit
        adc edx, dword[V2+4]
        mov dword[Vsum], eax
        mov dword[Vsum+4], edx

        ;exit program
        mov eax, 1
        int 0x80


section .data
        ;All labels are 8 bytes
        ;while registers are 4 bytes only!!
        V1 dq 0x1ABC000000000000
        V2 dq 0x2DEF000000000000
        Vsum dq 0

