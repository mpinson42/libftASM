section .text
	GLOBAL _ft_isalpha

non:
	mov rax,0
	jmp fin

_ft_isalpha:
	mov rax, rdi
	cmp eax, 0
	jl non



	mov rax,1
	cmp rdi,65
	jb non
	cmp rdi,91
	jb fin

	cmp rdi, 97
	jb non
	cmp rdi, 123
	jb fin
	mov rax, 0


fin:
	ret

