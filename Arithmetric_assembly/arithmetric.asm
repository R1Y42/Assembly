section .text
        global _start

_start:
        ;slow path
        mov ecx, 1313h
        mov ebx, 2121h
        mov eax, 2
        ;EAX = EAX * EBX
        mul ebx

        ;ECX = ECX + EAX
        add ecx, eax

        ;Faster with LEA
        mov ecx, 1313h
        mov ebx, 2121h
        
        ;EAX will be 5555h or 21845
        lea eax, [ebx*2+ecx]

        ;exit program
        mov eax,1
        int 0x80

