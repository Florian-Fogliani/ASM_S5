.intel_syntax noprefix
.text

.global my_strcpy


__cpyrec:
	mov r11b, [rsi]
	mov [rdi], r11
	add rsi, 1
	add rdi, 1
	cmp r11b, 0
	jne __cpyrec
	ret

my_strcpy:
	xor r11, r11
	mov rax, rdi
	jmp __cpyrec
	ret
