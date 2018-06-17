section .text
	GLOBAL _ft_toupper

_ft_toupper:
	mov rax,rdi
	cmp rdi,97
	jb fin
	cmp rdi,122
	ja fin


	sub rax, 32





fin:
	ret