#import "../../utils/core.typ": *

== Матрица перехода. Координаты

#ticket(step-fn: x => x + 2)[Координаты вектора. Изменение координат при замене базиса (+ см. предыдущий билет)]

#def[
    Пусть $E = sq(e) = V$ --- базис $V$. _Координатами_ $v in V$ называется набор скаляров $alpha_1, ..., alpha_n$ такой, что 
    $ v = alpha_1 e_1 + ... + alpha_n e_n = (sq(e)) vec(alpha_1, dots.v, alpha_n). $
    Координаты вектора $v$ обычно записывают столбцом и обозначают $[v]_E$.
]

#ticket(step-fn: x => x - 1, post-step-fn: x => x + 1)[Свойства матриц перехода между базисами]

#def[
    Пусть $E = (sq(e))$ --- базис. Тогда если $F = (sq(f))$ --- другой базис, то 
    $ M_(E -> F) = ([f_1]_E, ..., [f_n]_E) in M_n (K). $
    Такая матрица называется _матрицей перехода_ от базиса $E$ к базису $F$.

    $ E M_(E -> F) = F. $
]

#pr[
    + $M_(E -> F) in GL_n (K)$, $M_(E -> F)^(-1) = M_(F -> E)$
    + Если $E, F, G$ --- базисы $V$, то $M_(E -> F)M_(F -> G) = M_(E -> G).$
]

#proof[
    2. 
    $ cases(F = E M_(E -> F), G = F M_(F -> G)) ==> \
    G = (E M_(E -> F)) M_(F -> G) = E (M_(E -> F) M_(F -> G)) = E M_(E -> G) $

    $E$ --- базис, следовательно $M_(E -> G) = M_(E -> F) M_(F -> G)$

    1. Следует из 2:
    $ cases(M_(E -> F)M_(F -> E) = M_(E -> E) = E_n, M_(F -> E)M_(E -> F) = M_(F -> F) = E_n) ==> M_(E -> F)^(-1) = M_(F -> E). $
]
