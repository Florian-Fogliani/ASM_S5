.intel_syntax noprefix

.text
.global fact

__fact_rec:
	add r11, 1
	mul r11
	cmp r11, rdi
	jne __fact_rec
	ret

fact:
	xor rax, rax
	xor r11, r11
	add rax, 1
	cmp rdi, 0
	jne __fact_rec
	ret
