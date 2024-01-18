/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: atedesch <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/18 20:57:23 by atedesch          #+#    #+#             */
/*   Updated: 2024/01/18 23:22:25 by atedesch         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static size_t	ft_count(long int nbr)
{
	size_t	count;

	count = 0;
	if (nbr <= 0)
	{
		nbr = -nbr;
		count++;
	}
	while (nbr > 0)
	{
		nbr = nbr / 10;
		count++;
	}
	return (count);
}

char	*ft_itoa(int n)
{
	long int	nb;
	size_t		len;
	char		*out;

	nb = (long int)n;
	len = ft_count(nb);
	out = (char *)malloc(sizeof(char) * (len + 1));
	if (!out)
		return (NULL);
	out[len--] = '\0';
	if (nb < 0)
	{
		out[0] = '-';
		nb = -nb;
	}
	while (nb >= 10)
	{
		out[len] = nb % 10 + '0';
		nb = nb / 10;
		len--;
	}
	if (nb >= 0 && nb <= 9)
		out[len] = nb + '0';
	return (out);
}
