section .data
	i dd 0
section .text
	global _ft_memalloc
	extern _malloc
	extern _ft_bzero
_ft_memalloc:
	

	push rbp
	mov rbp, rsp

	push rdi		;push src

	;call _ft_strlen
	mov rax, rdi
	push rax       ;push len

	mov rdi,rax
	call _malloc

	pop rdx
	pop rsi

	cmp rax,0
	je end

	mov rdi,rax

	call _ft_bzero


end:
	;pop rdi
	pop rbp
	ret