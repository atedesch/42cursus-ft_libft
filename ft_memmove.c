/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: atedesch <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/16 16:57:33 by atedesch          #+#    #+#             */
/*   Updated: 2024/01/16 18:16:12 by atedesch         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	char	*ptr_src;
	char	*ptr_dest;
	size_t	i;

	if (dest == NULL && src == NULL)
		return (NULL);
	ptr_src = (char *)src;
	ptr_dest = (char *)dest;
	i = 0;
	if (ptr_dest > ptr_src)
		while (n-- > 0)
			ptr_dest[n] = ptr_src[n];
	else
	{
		while (i < n)
		{
			ptr_dest[i] = ptr_src[i];
			i++;
		}
	}
	return (dest);
}
