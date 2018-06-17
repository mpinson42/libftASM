section .data
	i db 10
	buff times 100 db 0
section .text
	GLOBAL _ft_cat
	extern _ft_bzero
	extern _ft_strlen

_ft_cat:

while:


	push rdi


	lea rdi, [rel buff]
	mov rsi, 100
	call _ft_bzero

	pop rdi

	lea rsi, [rel buff]
	mov rdx, 99
	mov rax, 0x2000003
	syscall

	jc fin


	cmp rax, 0
	je fin

	push rdi

	



	mov rdi, 1
	lea rsi, [rel buff]
	mov rdx, rax
	mov rax, 0x2000004
	syscall


	pop rdi
	jmp while




fin:
	leave
	ret