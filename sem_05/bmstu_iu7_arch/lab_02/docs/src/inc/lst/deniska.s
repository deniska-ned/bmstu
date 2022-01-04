        .section .text
        .globl _start;
        len = 9 # array length
        enroll = 1 # processed item count for 1 iteration
        elem_sz = 4 # array item size

_start:
        la x1, _x
        addi x20, x1, elem_sz*(len+1) # last+1 item address
        lw x31, 0(x1)
        add x1, x1, elem_sz*1
lp:
        lw x2, 0(x1)
        bltu x2, x31, lt
        add x31, x0, x2 #!
lt:
        add x1, x1, elem_sz*enroll
        bne x1, x20, lp
lp2: j lp2

        .section .data
_x:     .4byte 0x1
        .4byte 0x2
        .4byte 0x3
        .4byte 0x4
        .4byte 0x8
        .4byte 0x6
        .4byte 0x7
        .4byte 0x5
        .4byte 0x4
