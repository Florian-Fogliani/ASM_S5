.intel_syntax noprefix

.data
	format: .string "%d\n"

.text

.global my_pow

__end: 
	ret

__powrec:
	cmp rsi, rdi 
	je __end	
	mov rdx, 2
	mul rdx
	push rdi
	push rax
	push rsi
	mov rdi, offset format
	mov rsi, rax
	call printf
	pop rsi
	pop rax
	pop rdi
	add rsi, 1
	jmp __powrec
	
my_pow:
	mov rax, 1
	xor rsi, rsi
	jmp __powrec
	ret


