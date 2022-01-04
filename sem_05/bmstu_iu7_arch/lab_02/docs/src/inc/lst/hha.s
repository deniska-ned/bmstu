        .section .text
        .globl _start;
        len = 8 # array length
        enroll = 2 # processed items count for 1 iteration
        elem_sz = 4 # item size

_start:
        addi x20, x0, len/enroll
        la x1, _x
lp:
        lw x2, 0(x1)
        add x31, x31, x2
        lw x3, 4(x1)
        add x31, x31, x3 #!
        addi x1, x1, elem_sz*enroll
        addi x20, x20, -1
        bne x20, x0, lp
        addi x31, x31, 1
lp2: j lp2

        .section .data
_x:     .4byte 0x1
        .4byte 0x2
        .4byte 0x3
        .4byte 0x4
        .4byte 0x5
        .4byte 0x6
        .4byte 0x7
        .4byte 0x8
