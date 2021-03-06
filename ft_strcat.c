/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcat.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: madan <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/13 16:07:17 by madan             #+#    #+#             */
/*   Updated: 2019/09/15 18:28:07 by madan            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strcat(char *s1, const char *s2)
{
	int		i;
	char	*str;

	str = s1;
	i = 0;
	while (*str != '\0')
		str++;
	while (*s2 != '\0')
		*str++ = *s2++;
	*str++ = '\0';
	return (s1);
}
