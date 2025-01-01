.intel_syntax noprefix
.text
.global myatoull

__end:
	ret

__rec:
	mov sil, [rdi]
	cmp rsi, 0
	je __end
	mul r11
	sub rsi, 48 
	add rdi, 1 
	add rax, rsi
	jmp __rec
	ret 

myatoull:
	xor r11,r11
	xor rax, rax
	xor rsi, rsi
	mov r11, 10
	jmp __rec
	ret
