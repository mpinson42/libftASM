section .data
	i dd 0
section .text
	global _ft_memalloc
	extern _malloc
	extern _ft_memset
_ft_memalloc:
	

	push rbp
	mov rbp, rsp
	mov rax, rdi
	cmp eax, 0				
	jl end

	push rdi		;push src

	;call _ft_strlen
	mov rax, rdi
	push rax       ;push len

	mov rdi,rax
	call _malloc

	pop rdx
	pop rdx

	cmp rax,0
	je end

	mov rdi,rax
	mov rsi,0

	call _ft_memset


end:
	;pop rdi
	pop rbp
	ret