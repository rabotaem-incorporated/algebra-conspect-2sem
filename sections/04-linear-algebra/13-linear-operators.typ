#import "../../utils/core.typ": *

== Линейные операторы

#ticket[Линейные операторы, условия обратимости]

#th(name: "Принцип Дирихле для линейных отображений")[
    Пусть $Aa in Hom(V, W)$, $dim V = dim W < oo$. Тогда $Aa$ --- инъективно равносильно тому, что $Aa$ сюръективно.
]

#proof[
    $Aa$ --- инъективно равносильно $Ker Aa = 0 <==> dim Ker A = 0 <==> dim Im Aa = n <==> Im Aa = W$ равносильно $Aa$ сюръективно.
]

#def[
    _Линейным оператором_ на пространстве $V$ назывется элемент $End V = Hom(V, V)$.
]

#pr[
    $(End V, +, compose)$ --- ассоциативное кольцо с единицей.

    Сложение определяется как $(Aa + cal(B))(v) = Aa v + cal(B) v$
    Нейтральный элемент по $+$: $I d_V = Epsilon_V$
    Нейтральным элементом по $compose$ является $id_V = epsilon_V$.
]

#proof[
    Это доказывается непосредственной проверкой аксиом.
]

#def[
    Пусть $dim(V) = n, Aa in End(V),$ $E$ --- базис $V$. Матрица $Aa$ в базисе $E$ называется $[Aa]_E := [Aa]_(E, E)$
]

#pr[
    Пусть $E$ --- базис $V$, $dim V = n$. Тогда отображение 
    $
        End V &limits(-->)^lambda M_n (K) \
        Aa &--> [Aa]_E
    $
    Является изоморфизмом колец.
]

#proof[
    Знаем, что $lambda$ является биекцией, тогда проверим, что она сохраняет обе операции:
    $ lambda(Aa + Bb) = [Aa + Bb] = ([(Aa + Bb)e_1]_E, ..., [(Aa + Bb)e_n]_E) = ([Aa e_1 + Bb e_1]_E, ..., [Aa e_n + Bb e_n]_E) = $
    $ ([Aa e_1]_E + [Bb e_1]_E, ..., [Aa e_n]_E + [Bb e_n]_E) = [Aa]_E + [Bb]_E = lambda(Aa) + lambda(Bb) $
    Тот факт, что $lambda$ сохраняет умножение был проверен в параграфе про линейные отображения в более общем случае.
]

#def[
    Множество обратимых операторов над $V$ обоначается $GL(V)$.
]

#pr[
    Пусть $Aa in End V$, $dim V = n < oo.$ Тогда следующие утверждения эквивалентны

    + $Aa in GL(K)$
    + $rk Aa = n$
    + $Aa$ --- инъективно ($dim Ker A = 0$)
    + $exists $ базис $E$ пространства $V: [Aa]_E in GL_n (K)$ 
    + $forall$ базиса $E$ пространства $V: [Aa]_E in GL_n (K)$
]

#proof[ \
    "$1 <==> 2 <==> 3$" --- по принципу Дирихле. \
    "$5 ==> 4$" --- базисы существуют. \
    "$4 ==> 2$" --- по предыдущему преложению. \
    "$2 ==> 5$" --- по предыдущему преложению.
]

#pr[
    Пусть $E, F$ --- базисы пространства $V$, $dim(V) = n < oo$, $C = M_(E arrow F)$. Тогда
    $ [Aa]_E = C^(-1)[Aa]_F mul C $ 
]

#proof[
    Из соответсвующего предложения про линейные отображения $E -> E = E -> F compose F -> F compose F -> E$
]

#def[
    Матрица $B$ называется _эквивалентной_ матрице $A$, если существует $C in GL_n (K): B = C^(-1) A C$.
]

