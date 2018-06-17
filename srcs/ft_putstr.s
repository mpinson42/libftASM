section .text
	GLOBAL _ft_putstr
	extern _ft_strlen
non:
	mov rax,0
	jmp fin

_ft_putstr:
	cmp rdi,0
	je fin

	mov r9, rdi
	call _ft_strlen
	
	mov rdi, 1
	mov rsi, r9
	mov rdx, rax;
	mov rax, 0x2000004
	syscall


fin:
	ret