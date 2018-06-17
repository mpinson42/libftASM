section .data
	i db 0
section .text
	GLOBAL _ft_strclr
	extern _ft_strlen
	extern _ft_bzero

_ft_strclr:
	cmp rdi, 0
	jmp fin

	call _ft_strlen
while:
	mov rsi,rax
	call _ft_bzero



fin:
	ret