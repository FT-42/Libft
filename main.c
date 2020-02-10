#include "inc/libft.h"
#include <stdio.h>
#include <string.h>

int main(int ac, char **av)
{
    if (ac < 1)
        return (0);
    ft_putstr(av[1]);
    char new[10];
    size_t n = ft_strlen(av[1]);
    ft_strcpy(new, av[1]);
    printf("\n%i\n%s\n", n, new);
    return (0);
}
