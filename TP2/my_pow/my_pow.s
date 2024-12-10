    .global main

    .text

main:
    mov $5, %r12
    mov $1, %r13
    mov $0, %r14
    call power
    ret

power:
    add $1, %r14
    mov $2, %ax
    mul %r13

    cmp %r12, %r13
    jne power
    ret
