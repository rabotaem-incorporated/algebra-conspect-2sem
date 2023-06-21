#import "../../utils/core.typ": *
== Расширение полей

#ticket[Степень расширения. Мультипликативность степени]

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

#pr(name: "Мультипликативность степени")[
    Пусть $M fg L fg K$ --- башня расширений и $[L : M] = m < oo$ и $[M : L] = n < oo$. Тогда $[M : K] = m n$.
]

#proof[
    Пусть $e_1, ..., e_m$ --- базис $L fg K$, а $f_1, ..., f_n$ --- базис $M fg L$. \
    Докажем $(e_i f_j)_(i, j)$ является базисом $M fg K$.

    Докажем линейную независимость. Пусть $sum_(i, j) alpha_(i j) e_i f_j = 0$ для некоторых $alpha_(i j) in K$. Тогда 
    $
        0 = sum_(i, j)  alpha_(i j) e_i f_j = sum_(j) sum_i underbrace((alpha_(i j) e_i), in L) f_j ==> forall i: sum_(i) alpha_(i j) e_i = 0 ==> "все" alpha_(i j) = 0.
    $
    Пусть $c in M$, знаем, что $f_j$ образуют базис, поэтому $c = sum_(j) b_j f_j, space b_j in L, space b_j = sum_(i) a_(i j) e_i$, $a_(i j) in K$. Получаем, что $c = sum_(j)(sum_(i)a_(i j) e_i)f_j = sum_(i j)a_(i j)e_i f_j$.
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

#ticket[Алгебраические и трансцендентные расширения. Алгебраичность конечных
расширений]

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
    Если расширение конечное, то оно алгебраическое.
]

#proof[
    $d = [L : K]$, $x in L$\
    $1, x, x^2, ..., x^d in L$ --- ЛЗС $==>$ $alpha_0 + alpha_1 x + alpha_2 x^2 + ... + alpha_d x^d = 0$ и не все $alpha_i = 0$.
    Тогда $f(x) = 0$, где $f = sum_(i = 0)^(d)alpha_i x^i != 0$.
]

#ticket[Минимальный многочлен алгебраического элемента. Строение простого
алгебраического расширения, его степень]

#notice[
    Пусть $a$ --- алгебраический элемент над $K$ \
    $I = {f in K[x] bar f(a) = 0}$ --- идеал в $K[x]$, тогда $I = (f_0)$
    $(f g)(a) = 0 ==> f(a) g(a) = 0 ==> f(a) = 0 or g(a) = 0 ==> f_0$ неприводим
]

#denote[
    Такой многочлен обозначается $f_0 = Irr_K a$.
]

#def[
    Пусть $L fg K$ --- расширение, $a_1, ..., a_m in L$. $K(a_1, ..., a_m) = limits(sect.big)_(F #[--- подполе] \ F supset K \ a_1, ..., a_m in F) F$.
]

#def[
    Расширение называют _алгебраическим_, если все элементы, добавляемые к полю $K$ алгебраичны над $K$. Иначе расширение называется _трансцендентным_.

    Расширение называется _простым_, если добавляется один элемент.
]

#ticket[Присоединение к полю корня неприводимого многочлена]

#pr[
    Пусть $L$ --- простое алгебраическое расширение, то есть $a$ --- алгебраический над $K$. Тогда:
    + $L iso K[x] fg (f), space f = Irr_K a$
    + В $L$ есть базис вида $1, a, a^2, ..., a^(d - 1)$, где $d = deg f$.
]

#proof[
    Рассмотрим отображение (гомоморфизм колец)
    $
        K[x] &limits(-->)^(phi) L \
        g &maps g(a) \
        Ker(phi) &= (f)
    $
    По теореме по гомоморфизме существует изоморфизм
    $
        K[x] fg (f) &limits(-->)^(overline(phi)) Im phi \
        overline(x) &maps a \
    $
    ($overline(x)$ --- класс $x$)

    $f$ --- неприводим, поэтому $K[x] fg (f)$ --- поле, значит $Im phi$ тоже поле. $underbrace(K, (c = phi(c), c in K)) subset Im phi, space underbrace(a, a = phi(x)) in Im phi$. Первая часть доказана.
    
    В $K[x] fg (f)$ есть базис, $1, overline(x), ..., overline(x)^(d-1)$. Если бы они были линейно зависимы, то 
    $
        alpha_0 + alpha_1 overline(x)^1 + ... + alpha_(d-1) overline(x)^(d-1) = 0 = overline(alpha_0 + ... + alpha_(d - 1) x^(d - 1)).
    $
    Но тогда $f divides alpha_0 + ... + alpha_(d - 1) x^(d - 1)$, но так как степень многочлена справа меньше $d$, то справа стоит 0, и система линейно независима.

    Также $forall g in K[x] space g = q mul f + r, deg(r) < d ==> overline(g) = overline(r) in Lin(overline(1), overline(x), ..., overline(x^(d-1)))$, значит это действительно базис.

    Базис под действием гомоморфизма переходит в базис, а значит $1, a, a^2, ..., a^(d-1) #[--- базис L]$
]

#example[
    $QQ(root(3, 2))$ --- простое алгебраическое расширение $QQ$.
    
    $Irr_QQ root(3, 2) = x^3 - 2$. Значит $1$, $root(3, 2)$, $root(3, 4)$ --- базис $QQ(root(3, 2))$ над $QQ$.
]

#pr[
    Пусть $a$ траснцидентен над $K$. Тогда существует изоморфизм 
    $
        K(X) &--> K(a) \
        f / g &maps f(a) / g(a)\
    $
]

#proof[
    У Б10 было на практике :), а так для дальнейшего изложения оно не нужно.
]

#follow[
    Пусть $a, b: Irr_K a = Irr_K b$. Тогда
    $ K(a) iso K(b) $
]


#follow[
    Пусть $f$ --- неприводимый над $K$. Тогда существует расширение $K(a) fg K$ такое, что
    $ Irr_K a = f $
]
#proof[
    $L = K[x] fg (f)$ --- поле. $c in K$ отождествим с $overline(c) in K[x] fg (f)$ \
    $a := overline(x), f(a) = f(overline(x)) = overline(f(x)) = 0$
    $
        cases(f(c), f #[--- неприводим]) ==> Irr a = f
    $
] // я честно не вдуплил что произошло, переписал просто что видел