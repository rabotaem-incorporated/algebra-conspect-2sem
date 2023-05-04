#import "../../utils/core.typ": *

== Простые числа

#def[
    Число $p in ZZ$ называется простым, если $p in.not {-1, 0, 1}$ и все делители $p$ --- это $plus.minus 1$ и $p$.
]

#prop[
    +   $p$ --- простое $<==> -p$ --- простое.
    
    +   $p$ --- простое, $a in ZZ ==> p divides a$ или $p bot a$.
    
    +   $p, q$ --- простые $==> p sim q$ или $p bot q$.
    
    +   $p divides a b ==> p divides a$ или $p divides b$. 
]

#pr[
    Пусть $a eq.not plus.minus 1$, тогда существует простое число $p : space p divides a$.
]

#proof[

    Пусть $a = 0$, тогда $p = 239$
    
    Тогда $a eq.not 0$, пускай $a > 0$, так как, случай $a < 0$ аналогичен.
    
    Индукция по $a$:

    "База": $a = 1$, но $a > 0$, значит простое число уже встречалось.
    
    "Переход":
    
    $a$ --- простое $==> p = a, space p divides a$
    
    $a$ --- не простое, значит $exists d : space.quad  1 < d < a, space d divides a$
    
    $a = d d'$, тогда по индукционному переходу существует простое число $p : space p divides d$
    
    $p divides d, space d divides a ==> p divides a$
]

#def[
    Составное число --- это число отличное от 0, и не являющееся простым.
]

#def[    
    Решето Эратосфена --- это алгоритм, который позволяет найти все простые числа от 1 до $n$.

    $2, 3, 4, 5, 6, 7, 8, 9, ..., 100$

    -   2 --- простое, вычеркиваем все числа кратные 2
    
    -   3 --- простое, вычеркиваем все числа кратные 3
    
    -   4 --- составное, пропускаем
    
    -   и. т. д.

    В итоге получим все простые числа от $1$ до $100$.
]

#notice[
    $PP$ --- множество всех простых чисел.
]

#th(name: "Теорема Евклида")[
    Существует бесконечно много простых чисел
]

#proof[

    Пусть $p_1, p_2, ... p_n$ --- все простые числа. Возьмем $N = p_1 p_2 ... p_n + 1$, пусть оно составное $==>$
    
    $exists p in PP : space p divides N, space p > 0 ==> exists j: space p = p_j$
    
    Тогда, $p divides (N - 1) ==> p divides 1 ==> p = plus.minus 1$, противоречие.    
]