Disassembly of section .text:

80000000 <_start>:
80000000:       00000097                auipc   x1,0x0
80000004:       02c08093                addi    x1,x1,44 # 8000002c <_x>
80000008:       02808a13                addi    x20,x1,40
8000000c:       0000af83                lw      x31,0(x1)
80000010:       00408093                addi    x1,x1,4

80000014 <lp>:
80000014:       0000a103                lw      x2,0(x1)
80000018:       01f16463                bltu    x2,x31,80000020 <lt>
8000001c:       00200fb3                add     x31,x0,x2

80000020 <lt>:
80000020:       00408093                addi    x1,x1,4
80000024:       ff4098e3                bne     x1,x20,80000014 <lp>

80000028 <lp2>:
80000028:       0000006f                jal     x0,80000028 <lp2>

Disassembly of section .data:

8000002c <_x>:
8000002c:       0001                    c.addi  x0,0
8000002e:       0000                    unimp
80000030:       0002                    0x2
80000032:       0000                    unimp
80000034:       00000003                lb      x0,0(x0) # 0 <enroll-0x1>
80000038:       0004                    c.addi4spn      x9,x2,0
8000003a:       0000                    unimp
8000003c:       0008                    c.addi4spn      x10,x2,0
8000003e:       0000                    unimp
80000040:       0006                    0x6
80000042:       0000                    unimp
80000044:       00000007                0x7
80000048:       0005                    c.addi  x0,1
8000004a:       0000                    unimp
8000004c:       0004                    c.addi4spn      x9,x2,0
