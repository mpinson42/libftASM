#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

int ft_isalpha(char nb);
int ft_isalnum(char nb);
int ft_isdigit(char nb);
int ft_isascii(char nb);
int ft_toupper(char nb);
int ft_tolower(char nb);
size_t ft_strlen(char *str);
void ft_bzero(void *str, size_t i);
void ft_puts(char *str);
char *ft_strcat(char *dest, char *src);
void *ft_memset (void *s, int c, size_t n);
void *ft_memcpy(void *dest, void *src, size_t n);
char *ft_strdup(char *s);
void ft_cat(int fd);
//bonus
void ft_putstr_fd(char *str, int fd);
void ft_putstr(char *str);
void *ft_strcpy(void *dest, void *src);
char *ft_memalloc(int nb);
void ft_strclr(char *str1);
int ft_isblank(char i);
int ft_squar(int i);
int ft_abs(int i);

void _ft_isalpha(int i)
{
	printf("is_alpha: %d - %d\n", ft_isalpha(i), isalpha(i));
}

void _ft_isalnum(int i)
{
	printf("is_isalnum: %d - %d\n", ft_isalnum(i), isalnum(i));
}

void _ft_isdigit(int i)
{
	printf("is_isdigit: %d - %d\n", ft_isdigit(i), isdigit(i));
}
void _ft_isascii(int i)
{
	printf("is_isascii: %d - %d\n", ft_isascii(i), isascii(i));
}
void _ft_toupper(int i)
{
	printf("is_toupper: %d - %d\n", ft_toupper(i), toupper(i));
}
void _ft_tolower(int i)
{
	printf("is_tolower: %d - %d\n", ft_tolower(i), tolower(i));
}

void _strlen(char *str)
{
	printf("strlen: %zu - %lu\n", ft_strlen(str), strlen(str));
}

void _ft_bzero()
{
	char str[11] = "***1******";
	ft_bzero(str, 10);
	write(1, "ft_bzero : ",11);
	write(1, str, 10);
	write(1,"\n",1);
}

void _ft_puts()
{
	write(1,"ft_puts : ", 10);
	char str[11] = "**********";
	ft_puts(str);
}

void _ft_strcat()
{
	char str1[11] = "****\0     ";
	char str2[11] = "******";
	char *str = ft_strcat(str1,str2);
	printf("strcat: %s\n",str);
}

void _ft_memset()
{
	char str[11] = "          ";
	memset(str,42,10);
	printf("memset: %s\n", str);
}

void _ft_memcpy()
{
	char str1[11] = "          ";
	char str2[11] = "**********";
	char *str = ft_memcpy(str1,str2,10);
	printf("memcpy: %s\n", str);
}

void _ft_strdup()
{
	char str[4] = "123";
	printf("ft_strdup : %s - %s\n", ft_strdup(str), strdup(str));
}

void _ft_putstr_fd()
{
	char str[4] = "123";
	write(1,"ft_putstr_fd : ",15);
	ft_putstr_fd(str,1);
	write(1,"\n",1);
}

void _ft_putstr()
{
	char str[4] = "";
	write(1,"ft_putstr : ",12);
	ft_putstr(str);
	write(1,"\n",1);
}

void _ft_strcpy()
{
	char str1[4] = "   ";
	char str2[4] = "123";

	char *str = ft_strcpy(str1, "");
	printf("ft_strcpy : %s\n", str);
}

void _ft_memalloc()
{
	char *str = ft_memalloc(-42);
	write(1,"ft_memalloc : ",14);
	write(1,str,7);
	write(1,"\n",1);
}

void _ft_strclr()
{
	char str[4] = "123";
	ft_strclr(str);
	write(1,"ft_strclr : ",12);
	write(1,str,3);
	write(1,"\n",1);
}

int main(int argc, char **argv)
{
	_ft_isalpha(0);
	_ft_isalnum(1);
	_ft_isdigit(1);
	_ft_isascii(1);
	_ft_toupper(1);
	_ft_tolower(1);
	_strlen("char *str");
	_ft_bzero();
	_ft_puts();
	_ft_strcat();
	_ft_memset();
	_ft_memcpy();
	_ft_strdup();

	_ft_putstr_fd();
	_ft_putstr();
	_ft_strcpy();
	_ft_memalloc();
	_ft_strclr();

	
	return(0);
}