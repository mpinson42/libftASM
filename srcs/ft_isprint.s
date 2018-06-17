section .text
	GLOBAL _ft_isprint

non:
	mov rax,0
	jmp fin

_ft_isprint:
	mov rax,1
	cmp rdi,32
	jb non
	cmp rdi,126
	ja non



fin:
	ret