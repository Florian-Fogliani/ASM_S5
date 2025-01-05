.intel_syntax noprefix
.text

.global my_strcpy_rep

my_strcpy_rep:
	mov r11, rdi
	mov rdi, rsi
	mov rcx, -1
	xor rax, rax
	repnz scasb 
	mov rdi, r11
	not rcx
	mov rax, rdi 
	rep movsb
	ret
