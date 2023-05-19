#import "../../utils/core.typ": *
== Расширение полей

#def[
    $K$ --- подполе $L$, то говорят, что $L$ --- _расширение_ $K$.
    Обозначают $L fg K$.
]

#examples[
    + $RR fg QQ$
    + $CC fg RR$
    + $K(x) fg K$
    + $K fg K$
]


#notice[
    Если $L fg K$ --- расширение, то в $L$ есть структура линейного пространства над $K$. Аксиомы тривиально следуют из аксиом поля.
]

#def[
    Размерность расширешие обозначается $dim_K L = [L : K]$ и называется _степенью расширения_ $L fg K$. Если $[L : K] < oo$, то такое расширение называется _конечным_.
]

#examples[
    + $[CC : RR] = 2$.
    + $[RR : QQ] = oo$.
]

#pr(name: "Мультиприкативность степени")[
    Пусть $M fg L fg K$ --- башня расширений и $[L : M] = m < oo$ и $[M : L] = n < oo$. Тогда $[M : K] = m n$.
]

#proof[
    Пусть $e_1, ..., e_m$ --- базис $L fg K$, а $f_1, ..., f_n$ --- базис $M fg L$. \
    Докажем $(e_i, f_j)_(i, j)$ является базисом $M fg K$.

    Докажем линейную независимость. Пусть $sum_(i, j) alpha_(i j) e_i f_j = 0$ для некоторых $alpha_(i j) in K$. Тогда 
    $
        0 = sum_(i, j)  alpha_(i j) e_i f_j = sum_(j) sum_i underbrace((alpha_(i j) e_i), in L) f_j ==> forall i: sum_(i) alpha_(i j) e_i = 0 ==> "все" alpha_(i j) = 0.
    $
    Пусть $c in M$, знаем, что $f_j$ образуют базис, поэтому $c = sum_(j) b_j f_j$, $b_j in L$. $b+j sum_(i) a_(i j) e_i$, $a_(i j ) in K$. Получаем, что $c = sum_(j)(sum_(i)a_(i j) e_i)f_j = sum_(i j)a_(i j)e_i f_j$.
]

#pr[
    Пусть $F$ --- конечное поле $char F = p$. Тогда его $abs(F) = p^n #[ для некоторого ] n in NN$
]

#proof[
    $F fg F_0$, где $F_0$ --- его простое подполе. $F_0 iso ZZ fg (p)$. Знаем $[F:F_0] = n$, пусть $e_1, ..., e_n$ --- базис $F$. Рассмотрим биекцию
    $
        F_0^n &--> F \
        vec(alpha_1, dots.v, alpha_n) &maps sum alpha_i e_i.
    $
    Так как это биекция, $abs(F) = abs(F_0^n) = p^n$.
]

#def[
    Пусть $L fg K$ --- расширение и $a in L$. Тогда $a$ называется _алгебраическим_ над $K$, если $exists f in K[x], f!= 0 : f(a) = 0$
]

#example[
    + $sqrt(2)$ --- алгебраичен над $QQ$.
    + $pi$ --- не алгебраичен над $QQ$ (без доказательства).
]

#def[
    Если $a$ --- не алгебраичен над $K$, говорят, что $a$ --- _трансцендетный_ над $K$.
]

#def[
    $L fg K$ называется _алгебраичным расширешнием_, если все элементы алгебраичны над $K$. В противном слечае расширение называется _трансцендентным_.
]

#pr[
    Если расширение конченое, то оно алгебраическое.
]

#proof[
    $d = [L : K]$, $x in L$\
    $1, x, x^2, ..., x^d in L$ --- ЛЗС $==>$ $alpha_0 + alpha_1 x + alpha_2 x^2 + ... + alpha_d x^d = 0$ и не все $alpha_i = 0$.
    Тогда $f(x) = 0$, где $f = sum_(i = 0)^(d)alpha_i x^i != 0$.
]

#notice[
    Пусть $a$ --- алгебраический элемент над $K$
    $I = {f in K[x] bar f(a) = 0}$ --- идеал в $K[x]$, тогда $I = (f_0)$ можно считать $f_0 = x^d + ...$
    ($f(a) = 0 ==> (f g)(a) = 0 = f(a) f(g)$)
]

#pr[
    $f_0$ неприводим.
]
#proof[
    $f_0 = g dot h ==> f_(a) = g(a) h(a) ==> cases(delim: "[", g(a) = 0, h(a) = 0) ==> cases(delim: "[", g in I, h in I) ==> cases(delim: "[", f_0 divides g, f_0 divides h)$
]

#denote[
    Такое многочлен обозначается $f_o = op("Irr")_K a$.
]

#def[
    Пусть $L fg K$ --- расширение, $a_1, ..., a_m in L$. $K(a_1, ..., a_m) = limits(sect.big)_(F #[--- подполе] \ F supset K \ a_1, ..., a_m in F) F$.
]
