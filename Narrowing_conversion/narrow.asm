section .text
        global _start

_start:
        mov rbx, 10
        mov al, bl
        
        ;show how bigdata truncated
        mov rbx, 335
        mov al, bl
        
        ;unsigned widening conversion
        mov al, 10
        

        ;initialize whole RBX to 0
        mov rbx, 0
        ;copy AL to BL leaving all upper Zero in RBX
        mov bl, al
        
        ;signed widening conversion
        mov bx, -10
        movsx ebx, bx
        
        ;exit program
        mov eax ,1
        int 0x80
        
