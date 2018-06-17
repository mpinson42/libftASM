section .text
	GLOBAL _ft_isascii

non:
	mov rax,0
	jmp fin

_ft_isascii:
	mov rax,1
	cmp rdi,0
	jb non
	cmp rdi,127
	ja non



fin:
	ret