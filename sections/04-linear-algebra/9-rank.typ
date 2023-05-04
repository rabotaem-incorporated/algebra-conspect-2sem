#import "../../utils/core.typ": *

== Ранг матрицы

#def[
    Пусть $sq(v) in V$.
    _Рангом_ набора векторов $sq(v)$ называется размер его линейной оболочки:
    $ rk(sq(v)) = Dim Lin(sq(v)) $
]

#lemma[
    $rk(sq(v))$ равен наибольшему числу линейно независимых векторов из $sq(v)$.
]

#proof[
    $W = Lin(sq(v)).$

    Найдутся индексы $sq(i, r)$ такие, что $sq(v, i_1, i_r)$ --- базис $W$. Очевидно, $r = rk(sq(v))$. 
    
    $sq(v, i_1, i_r)$ --- ЛНС в $W$. Если $sq(w, l)$ --- ЛНС в $W$, то $l <= Dim W = r$.
]

#notice[
    Для удобства будем обозначать $i$-ю строку матрицы как $mrow(A, i)$, а $j$-й столбец как $mcol(A, j)$. 
]

#def[
    _Столбцовым рангом_, или просто _рангом_, матрицы $A in M_(m, n)(K)$ называется ранг совокупности ее столбцов. 
    $ rk A = rk(mcol(A, 1), ..., mcol(A, n)). $

    Строчным рангом матрицы называется ранг совокупности ее строк.
    $ rk A^T = rk(mrow(A, 1), ..., mrow(A, m)). $

    Совокупности рассматриваются как векторы в пространстве $K^n$ или $K^m$.
]

#lemma[
    Столбцовый ранг матрицы не изменяется при элементарных преобразованиях ее строк и столбцов.
]

#proof[
    Пусть произошло преобразование $A ~~> B$. 

    + Рассмотрим элементарные преобразования столбцов. Тогда линейные оболочки столбцов не изменятся, так как при любом элементарном преобразовании получающиеся столбцы будут выражаться через старые. (Точнее, из этого следует одно включение. Второе получается из симметрии.) $ 
        Lin(mcol(A, 1), ..., mcol(A, n)) = Lin(mcol(B, 1), ..., mcol(B, n)) ==> rk A = rk B. 
    $

    + #[
        Рассмотрим элементарные преобразования строк. Пусть $rk A = r$. Тогда $exists j_1, ..., j_r: space mcol(A, j_1), ..., mcol(A, j_n)$ --- ЛНС. Покажем, что $mcol(B, j_1), ..., mcol(B, j_n)$ --- ЛНС. Предположим, что 
        $ 
            lambda_1 mul mcol(B, j_1) + ... + lambda_r mul mcol(B, j_r) = 0, "где найдется" j_* != 0. 
        $
        $ 
            B mul underbrace(vec(0, 0, dots.v, lambda_1, dots.v, 0, dots.v, lambda_r, dots.v, 0), d) = 0, space
            A = U mul B ==> U mul B d = 0 ==> A d = 0.
        $
        Но тогда $lambda_1 = ... = lambda_n = 0$, что противоречит предположению.
        Значит $rk B >= r = rk A$. Аналогично получается обратное неравенство. Значит $rk A = rk B$.
    ]
]

#follow[
    Строчный ранг матрицы не меняется при элементарных преобразованиях ее строк и столбцов.
]

#proof[
    $rk A^T = rk B^T.$
]

#th[
    Строчный и столбцовый ранг матрицы совпадают.
]

#proof[
    Рассмотрим матрицу $A$. Ее можно превратить в окаемленную единичную матрицу$D$. $A ~~> D$. И строчный, и столбцовый ранг матрицы $D$ совпдает и равен количеству единиц $r$ в матрице. Значит $rk A = rk D = r = rk D^T = rk A^T$.
]

#notice[
    Если $A = P D Q$, то $rk A = rk D = #[количество единиц в $D$]$.
]

#lemma[
    Пусть $A in M_(m, n)(K)$, $B in M_(n, p)(K)$. Тогда $rk(A B) <= min(rk A, rk B)$.
]

#proof[
    $
        cases(
        mcol(A B, 1) &= A mul mcol(B, 1),
        mcol(A B, 2) &= A mul mcol(B, 2),
        & dots.v,
        mcol(A B, p) &= A mul mcol(B, p),
        ) ==> Lin(mcol(A B, 1), ..., mcol(A B, p)) subset Lin(mcol(A, 1), ..., mcol(A, n))
        ==> rk A B <= rk A.
    $
    $ rk(A) >= rk(A B) = rk((A B)^T) = rk (B^T A^T) <= rk B^T = rk B. $
]

#follow[
    $ U in GL_n(K), A in M_(m, n)(K) ==> rk(A U) = rk(A) $
]

#proof[
    $ 
        rk(A U) &<= rk A \
        rk(A) = rk(A U mul U^(-1)) &<= rk(A U)
    $
]

#pr[
    Пусть $U in M_n(K)$. Тогда следующие условия равносильны:
    + $U in GL_n(K).$
    + $exists V in M_n(K): space U V = E_n.$
    + $exists V in M_n(K): space V U = E_n.$
    + $det(U) != 0.$
    + $rk U = n.$
]

#proof[
    - "$4 <=> 1$" --- знаем.
    - "$1 => 2, 3$" --- тривиально.
    - "$2 => 4$" --- $det(U) det(V) = det(U V) = det(E_n) = 1 ==> det(U) != 0$.
    - "$3 => 4$" --- $det(U) det(V) = det(V U) = det(E_n) = 1 ==> det(U) != 0$.
    - "$1 => 5$" --- $U V = E_n, V in GL_n(K) ==> rk U = rk (U V) = rk E_n = n$.
    - "$5 => 1$" --- $U = P D Q, rk D = n space "и" space P, Q in GL_n(K)$.
]

#def[
    _Подматрицей_ матрицы $A$ называется матрица из которой выбраны некоторые строки и столбцы.
]

#def[
    _Минором порядка $r$_ матрицы $A$ называется определитель подматрицы $A$ размера $r times r$.
]

#th(name: "О минорном ранге")[
    Пусть $rk A = r$. Тогда:
    + В $A$ есть ненулевой минор порядка $r$.
    + В $A$ нет ненулевого минора порядка $s > r$.
]

#proof[
    + #[
        Так как $rk A = r$, $exists j_1, ..., j_(r): (mcol(A, j_1), ..., mcol(A, j_r))$ --- ЛНС. Оставим только эти столбцы. $ A' = A[;sq(j, r)]. $
        Тогда $rk A' = r$, так как все оставшиеся столбцы --- ЛНС.

        Значит в $A'$ есть $r$ линейно независимых строк, то есть 
        $
            exists i_1, ..., i_r: mrow(A', i_1), ..., mrow(A', i_r_1) #[--- ЛНС]
        $

        Из этих строк можно составить матрицу $A''$. Ее ранг равен $r$, а значит определитель этого минора не равен 0.
    ]

    + #[
        Пусть $s > r$. $B = A[sq(i, s); sq(j, s)]$. $rk B = s$. Значит $B$ имеет $s$ линейно независимых строк, то есть и в $A$ есть $s$ линейно независимых строк. Но $rk A = r < s$. Значит такого минора не найдется.
    ]
]

#follow(name: "Эквивалентное определение ранга")[
    Ранг --- это максимальный порядок ненулевого минора.
]

#th(name: "Кронекера-Капелли")[
    Система линейных уравнений 
    $
        A mul vec(x_1, dots.v, x_n) = b quad
    $
    Совместна тогда и только тогда, когда $rk A = rk (A | b)$.
]

#proof[
    - "$==>$": Если система совместна, то $exists sq(x)$:
    $ 
        x_1 mcol(A, 1) + ... + x_n mcol(A, n) = b space ==> space
        b in Lin(mcol(A, 1), ..., mcol(A, n)) space ==> \
        Lin(mcol(A, 1), ..., mcol(A, n)) = Lin(mcol(A, 1), ..., mcol(A, n), b) space ==> space
        rk A = rk (A | b).
    $

    - "$<==$":
    $ 
        rk A = rk(A | b) imply^(A <= (A | b))
        Lin(mcol(A, 1), ..., mcol(A, n)) = Lin(mcol(A, 1), ..., mcol(A, n), b) ==> \
        b in Lin(mcol(A, 1), ..., mcol(A, n)) space ==> space
        exists sq(x): space x_1 mcol(A, 1) + ... + x_n mcol(A, n) = b.
    $
]
