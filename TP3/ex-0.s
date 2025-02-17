.intel_syntax noprefix

.global gets_b

gets_b:
    mov r11, rbp
    sub r11, 16
    mov [r11], 1
