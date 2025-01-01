.intel_syntax noprefix
.global str_cat

__strlen:
	add cl, 1
	mov r11b, [rsi]
	add si, 1
	cmp r11b, 0
	jne __strlen
	mov rsi, r8

__findend:
	xor r11b, r11b
	mov r11b, [rdi]
	add di, 1
	cmp r11b, 0
	jne __findend
	sub di, 1
	
__concat:
	rep movsb
	mov di, 0
	ret

str_cat:
	xor rcx, rcx
	mov r8, rsi
	call __strlen
	ret
