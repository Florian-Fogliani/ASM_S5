.intel_syntax noprefix

.global my_strcpy

.text

my_strcpy:
    xor r11, r11
    mov r11, rdi
    mov rdi, rsi
    mov rsi, r11
    mov rcx, -1
    repnz movsb
    ret
