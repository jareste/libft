/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jareste- <jareste-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/31 20:08:17 by jareste-          #+#    #+#             */
/*   Updated: 2023/09/25 10:44:20 by jareste-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*next;

	next = malloc(sizeof(t_list));
	if (!next)
		return (NULL);
	next->content = content;
	next->next = NULL;
	return (next);
}

// int	main(void)
// {
// 	t_list	*lst;
// 	void	*cont;

// 	cont = NULL;
// 	for (int i = 0; ; i++)
// 		lst = ft_lstnew(cont);
// 	return (0);
// }
