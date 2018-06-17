section .text
	GLOBAL _ft_putstr_fd
	extern _ft_strlen
non:
	mov rax,0
	jmp fin

_ft_putstr_fd:
	cmp rdi,0
	je fin

	mov r9, rdi
	call _ft_strlen
	
	mov rdi, rsi
	mov rsi, r9
	mov rdx, rax;
	mov rax, 0x2000004
	syscall


fin:
	ret