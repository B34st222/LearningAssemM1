.section __TEXT,__text
.global _main

_main:
    
    mov     w0, #1
    adrp    x1, msg@PAGE
    add     x1, x1, msg@PAGEOFF
    mov     w2, #13
    bl      _write

    mov     w0, #0
    bl      _exit



.section __TEXT,__cstring
msg:
    .asciz "Hello World!\n"

