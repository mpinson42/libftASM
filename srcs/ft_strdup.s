section .data
	i dd 0
section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc
_ft_strdup:
	push rbp
	mov rbp, rsp

	push rdi		;push src

	call _ft_strlen
	inc rax
	push rax       ;push len

	mov rdi,rax
	call _malloc

	pop rdx
	pop rsi

	mov rdi,rax

	call _ft_memcpy


end:
	pop rbp
	ret