section .data
	i db 10
	string db '(null)',10

section .text
	GLOBAL _ft_puts
	extern _ft_strlen
non:
	mov rax,0
	jmp fin

err:

	mov rdi, 1
	lea rsi, [rel string]
	mov rdx, 7;
	mov rax, 0x2000004
	syscall
	jmp fin

_ft_puts:
	cmp rdi,0
	je err


	mov r9, rdi
	call _ft_strlen
	
	mov rdi, 1
	mov rsi, r9
	mov rdx, rax;
	mov rax, 0x2000004
	syscall

	mov rdi, 1
	lea rsi, [rel i]
	mov rdx, 1;
	mov rax, 0x2000004
	syscall


fin:
	ret