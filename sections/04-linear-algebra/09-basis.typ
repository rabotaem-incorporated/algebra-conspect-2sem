#import "../../utils/core.typ": *

== Базис и размерность

#ticket[Равносильные определения базиса. Размерность]

#def[
    Набор векторов $sq(e) in V$ называется _базисом_, если $ forall v in V space.quad exists! alpha_1, ..., alpha_n in K: space.quad  v = alpha_1 e_1 + ... + alpha_n e_n $
]

#pr(name: "Эквивалентные определения базиса")[
    Пусть $e_1, ..., e_n in V$. Тогда следующие утверждения эквиваленты:

    + $sq(e)$ --- базис $V$
    + $sq(e)$ --- ЛНС и $Lin(sq(e)) = V$.
    + $sq(e)$ --- Максимальная по включению ЛНС (то есть она не является собственным подмножеством к какой-либо другой ЛНС).
    + $sq(e)$ --- Минимальная по включению порождающая система (то есть она перестает быть таковой при удалении любого вектора).
]

#proof[
    - "$1 => 2$": Пусть есть нетривиальная линейная комбинация: $alpha_1 e_1 + ... + alpha_n e_n = 0 = 0 dot e_1 + ... + 0 dot e_n$ --- противоречие с определением базиса. $Lin(sq(v)) = V$ --- из определения базиса.

    - "$2 => 1$": Пусть $alpha_1 e_1 + ... + alpha_n e_n = beta_1 e_1 + ... + beta_n e_n$. Тогда $(alpha_1 - beta_1) e_1 + ... = 0$. $sq(e)$ --- ЛНС, значит $alpha_i - beta_i = 0 ==> alpha_i = beta_i$.

    - "$2 => 3$": Предположим это не так. Тогда $exists v in V space.quad sq(e), v$ --- ЛНС, но $v in V = Lin(sq(e))$, что несовместимо с линейной независимостью. Противоречие.

    - "$3 => 2$": Пусть $v in.not Lin(sq(e)) ==> sq(e), v$ --- ЛНС. Противоречие с максимальностью.

    - "$2 => 4$": Предположим $sq(e, n - 1)$ --- порождающая система (не умаляя общности). Тогда $e_n in Lin(sq(e, n - 1))$ и $sq(e)$ --- ЛЗС. Противоречие с условием 2.

    - "$4 => 2$": Пусть $sq(e)$ --- ЛЗС. Тогда в ней найдется вектор, который выражается через предыдущие: $e_j in Lin(sq(e, j - 1)) ==> Lin(e_1, ..., e_j, ..., e_n) = Lin(e_1, ..., hat(e_j), ..., e_n)$. Значит и без $e_j$ система порождающая. Противоречие с минимальностью.
]

#pr[
    Пусть $V = Lin(sq(v))$. Тогда из набора $sq(v)$ можно выбрать базис.
]

#proof[
    Если какой-то вектор выражается через остальные --- будем удалять его, иначе --- оставлять. Повторяем пока не останется ЛНС.
]

#follow[
    В любом конечномерном пространстве существует базис.
]

#notice[
    В бесконечномерном пространстве тоже есть базис, но линейные комбинации берутся финитные.
]

#pr[
    Любые базисы содержат одинаковое число векторов.

    Пусть $e_1, ..., e_m$ и $f_1, ..., f_n$ --- базисы $V$. Тогда $m = n$.
]

#proof[
    $f_1, ..., f_n in Lin(e_1, ..., e_m) = V$. $f_1, ..., f_n$ --- ЛНС. Значит $n <= m$. Аналогично, $n >= m$.
]

#def[
    _Размерностью_ $V$ называется число векторов в базисе $V$. Обозначается $Dim V$
]

#example[
    $Dim M_(m, n)(K) = m n$
]

#ticket[Свойства пространств заданной размерности. Размерность подпространства]

#pr[
    Пусть $Dim V = n$.
    + Если $sq(v, m)$ --- ЛНС в $V$, то $m <= n$.
    + Если $Lin(sq(v, m)) = V$, то $m >= n$.
    + Если $sq(v)$ --- ЛНС, то это базис.
    + Если $Lin(sq(v)) = V$, то это базис.
]

#proof[
    + $sq(v, m) in Lin(sq(e)) ==> m <= n$, по теореме о линейной зависимости линейных комбинаций.
    + Из порождающего семейства можно выбрать базис.
    + Если $sq(v)$ --- не базис, найдется $v$ такой, что $sq(v), v$ --- ЛНС. Противоречие с 1.
    + Из $sq(v)$ можно выбрать базис, а так как векторов здесь $n$, это и есть базис.
]

#pr[
    Пусть $Dim V = n$, $W < V$. Тогда
    + $Dim W <= n$.
    + $Dim W = n$ если и только если $W = V$.
]

#proof[
    + $W < V$ --- подпространство, значит $W = Lin(sq(w, m))$. $sq(w, m)$ --- ЛНС в $V$. $m <= n$.
    + Если $W = V$, то $W = Lin(sq(w))$. $sq(w)$ --- ЛНС. $n = n$.
]
