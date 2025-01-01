.intel_syntax noprefix
.text
.global str_len

str_len:
	xor rax, rax
	cmp rdi, 0
	jmp __strlen

__strlen:
	add dil, 1
	add rax, 1
	mov r11b, [rdi]
	cmp r11b, 0
	jne __strlen
	ret
