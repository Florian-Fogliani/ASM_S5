    .global main

    .text
main:
    sub     $8, %rsp
    movq    $message, %rdi
    call    puts
    mov     $0, %rax
    add     $8, %rsp
    ret

message:
    .asciz "Hello, world!"


