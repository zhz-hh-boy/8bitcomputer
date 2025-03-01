MOV SS,1
MOV SP,0X20
jmp start
show:
    mov D,255
    iret
start:
    mov c,0
increase:
    inc c
    mov d,c
    JP disable
enable:
    sti
    jmp interrupt
disable:
    cli
interrupt:
    int show
    jmp increase