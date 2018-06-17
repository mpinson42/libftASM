section .data
	i dd 0
section .text
	GLOBAL _ft_memset

_ft_memset:
	
	push rdi
    mov     rax, rsi
    mov     rcx, rdx
    cld
    repne STOSB



fin:
	pop rdi
	mov rax, rdi
	ret