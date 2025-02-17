.intel_syntax noprefix

.text
.global str_reverse

str_reverse:
	mov rax, rsi
	mov rsi, rdi
	add rsi, rax
	sub rsi, 1
	mov r11, 2
	div r11
	mov r11, rax
	mov rax, rdi
__loop:
	mov r12b, [rdi]
	movsb 
	sub rsi, 1
	mov [rsi], r12b
	sub rsi, 1
	cmp r11, 0
	dec r11
	jne __loop
	ret
