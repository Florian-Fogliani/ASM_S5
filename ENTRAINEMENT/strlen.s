.intel_syntax noprefix

.global str_len

str_len:
    mov rcx, -1
    xor rax, rax
    repnz scasb
    not rcx
    sub rcx, 1
    mov rax, rcx
    ret
