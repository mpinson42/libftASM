section .text
	GLOBAL _ft_tolower

_ft_tolower:
	mov rax,rdi
	cmp rdi,65
	jb fin
	cmp rdi,90
	ja fin


	add rax, 32





fin:
	ret