#include <sys/syscall.h>

.intel_syntax noprefix

.bss
   .lcomm buffer, 256


.global cat

.text 

cat:
    mov rdx, rsi
    mov rsi, rdi
    mov rdi, 1 
    mov rax, __NR_write
    syscall
    ret
