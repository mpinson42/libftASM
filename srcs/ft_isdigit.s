section .text
	GLOBAL _ft_isdigit

non:
	mov rax,0
	jmp fin

_ft_isdigit:
	mov rax,1
	cmp rdi,48
	jb non
	cmp rdi,57
	ja non



fin:
	ret