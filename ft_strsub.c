/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsub.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: madan <marvin@42.fr>                       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/14 20:37:20 by madan             #+#    #+#             */
/*   Updated: 2019/09/15 19:45:01 by madan            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strsub(char const *s, unsigned int start, size_t len)
{
	char		*str;
	size_t		i;

	i = 0;
	if (!s)
		return (NULL);
	str = ft_strnew(start);
	if (!str)
		return (NULL);
	while (i < len)
		*(str + i++) = *(s + start++);
	return (str);
}
