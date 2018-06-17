section .text
	GLOBAL _ft_isalpha

non:
	mov rax,0
	jmp fin

_ft_isalpha:
	mov rax,1
	cmp rdi,65
	jb non
	cmp rdi,90
	ja non



fin:
	ret