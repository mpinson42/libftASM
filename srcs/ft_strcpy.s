section .data
	i dd 0
section .text
	GLOBAL _ft_strcpy
	extern _ft_strlen

_ft_strcpy:

	push rdi
	mov rdi, rsi
	call _ft_strlen
	pop rdi
	
	push rdi
    mov     rcx, rax
    cld
    rep movsb



fin:
	pop rax
	ret