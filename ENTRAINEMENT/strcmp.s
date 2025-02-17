.intel_syntax noprefix

.global strcmpb

strcmpb:
    xor rax, rax
    xor r11, r11
    xor r12, r12
    sub rdi, 1
    sub rsi, 1
__boucle:
    add rdi, 1
    add rsi, 1
    mov r11b, [rdi]
    mov r12b, [rsi]
    cmp r11, 0
    je __end_rdi
    cmp r11, r12
    je __boucle
    jge __greater
    mov rax, -1
    ret

__end_rdi:
    cmp r12, 0
    je __same
    mov rax, -1
    ret

__same:
    xor rax, rax
    ret

__greater:
    mov rax, 1
    ret

