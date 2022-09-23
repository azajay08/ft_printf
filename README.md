# ft_printf (Hive Helsinki - 42)

What do you do when you are limited to what functions you can use? You make a libft.
Well what happens when one of those forbidden functions is one of the most popular like printf?
You make your own printf function.

At Hive, we don’t have all the functions at our disposal. We have to complete projects with certain constraints.
Well things would be so much easier if we could just use printf.... but we can't. So in this project, we had to recreate the printf function.
We had to mirror the function as close as possible. This means handling the majority of the format specifiers and the flags. 

My printf function `ft_print` handles the the format specifiers `diouxXfspc%`, flags such as `+,-, ,0,*,#`, precision and width,
along with the modifiers `l, ll, h, hh, L`.
