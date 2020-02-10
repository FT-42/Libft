#include "../inc/libft.h"

void        ft_putstr(char *s)
{
    while (*s)
        ft_putchar(*s++);
}
