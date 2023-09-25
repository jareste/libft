/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jareste- <jareste-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/25 05:46:30 by jareste-          #+#    #+#             */
/*   Updated: 2023/09/25 07:58:52 by jareste-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*new;
	t_list	*aux;
	t_list	*tmp;

	if (lst == NULL || f == NULL)
		return (NULL);
	new = NULL;
	while (lst)
	{
		tmp = (f)(lst->content);
		aux = ft_lstnew(tmp);
		if (!aux)
		{
			del(tmp);
			ft_lstclear(&new, del);
		}
		lst = lst->next;
		ft_lstadd_back(&new, aux);
	}
	return (new);
}
