/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: grmullin <grmullin@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/25 15:56:54 by grmullin          #+#    #+#             */
/*   Updated: 2025/04/29 16:46:01 by grmullin         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *str, int c)
{
	size_t	d;

	d = 0;
	if (!str)
		return (0);
	while (d <= ft_strlen(str))
	{
		if (str[d] == (char)c)
			return ((char *)&str[d++]);
		d++;
	}
	return (0);
}
/*
#include <stdio.h>
#include <string.h>

int	main()
{
	int c = '\0';
	char str[] = "String me up";

	printf("%s\n", ft_strchr(str, c));
	printf("%s\n", strchr(str, c));
	printf("%s\n", ft_strchr("teste", 'e' + 256));
	printf("%s\n", strchr("teste", 'e' + 256));
	printf("%s\n", ft_strchr("teste", 1024));
	printf("%s\n", strchr("teste", 1024));
	printf("%c\n", 357);
	printf("%c\n", 1024);
}*/
