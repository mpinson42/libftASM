section .text
	GLOBAL _ft_isalnum
oui:
	mov rax,1
	jmp fin

non:
	mov rax,0
	jmp fin

_ft_isalnum:
	mov rax,0
	cmp rdi,48
	jb non
	cmp rdi,57
	jb oui

	cmp rdi,65
	jb non
	cmp rdi,90
	jb oui

	cmp rdi,97
	jb non
	cmp rdi,122
	jb oui



fin:
	ret