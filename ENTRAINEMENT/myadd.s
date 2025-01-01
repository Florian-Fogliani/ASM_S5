.intel_syntax noprefix
.text
.global myadd

myadd:
	xor rax, rax
	add rax, rdi
	add rax, rsi
	ret
