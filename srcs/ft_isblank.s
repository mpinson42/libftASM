section .text
	GLOBAL _ft_isblank

non:
	mov rax,1
	jmp fin

_ft_isblank:
	mov rax,0
	cmp rdi,9
	je non
	cmp rdi,32
	je non



fin:
	ret