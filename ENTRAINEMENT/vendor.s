.intel_syntax noprefix
.text
.global get_cpu_vendor_id


__cp:
	mov [rdi], r8b 
	add rdi, 1
	shr r8, 8
	mov [rdi], r8b
	add rdi, 1
	shr r8, 8
	mov [rdi], r8b
	add rdi, 1
	shr r8, 8
	mov [rdi], r8b
	ret

get_cpu_vendor_id:
	xor rax, rax
	cpuid
	mov r8, rbx
	call __cp
	add rdi, 1
	mov r8, rdx
	call __cp
	add rdi, 1
	mov r8, rcx
	call __cp
	add rdi, 1
	mov r8b, 0
	mov [rdi], r8b
	ret
