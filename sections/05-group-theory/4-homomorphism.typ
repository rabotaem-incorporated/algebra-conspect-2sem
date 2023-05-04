#import "../../utils/core.typ": *
#import "../../utils/cd/cd.typ": *

== Гомоморфизмы

#def[
    Пусть $G$, $G'$ --- группы.

    Отображение $phi: G --> G'$ называется _гомоморфизмом_, если для любых $g_1, g_2 in G$ выполнено $ phi(g_1 g_2) = phi(g_1) phi(g_2). $ 
]

#examples[
    + $GL_n(K) limits(-->)^(det) K^*$

    + $S_n limits(-->)^sgn ZZ*$
    
    + $R^*_+ limits(-->)^ln RR$

    + $g maps g^k$, где $g in G$ --- Абелева группа, $k in ZZ$.

    + $H < G$, $H --> G$: $h maps h$ --- гомоморфизм из подгруппы в группу.

    + $H nsubg G$, $pi_H: G --> G fg H$: $g maps g H$ --- проекция на подгруппу.
]

#def[
    Пусть $phi : G --> G'$ --- гомоморфизм
    $Ker(phi) = {g in G bar phi(g) = e}$
    $Im(phi) = {phi(g) bar g in G}$
]

#lemma[
    Пусть $phi: G --> G'$ --- гомоморфизм. Тогда
    + $phi(e) = e$
    + $forall g in G: phi(g^(-1)) = (phi(g))^(-1)$
]

#proof[
    + #[$
        e e = e ==> phi(e) phi(e) = phi(e) ==> phi(e) = e
    $]
    
    + #[$
        g mul g^(-1) = e ==> phi(g) mul phi(g^(-1)) = phi(e) = e ==> phi(g^(-1)) = (phi(g))^(-1)
    $]
]

#pr[
    Пусть $phi: G --> G'$ --- гомоморфизм. Тогда
    + $Ker phi nsubg G$
    + $Im phi < G'$
]

#proof[
    + Докажем $Ker phi nsubg G$
        - $phi(e) = e ==> e in Ker(phi)$
        - $g_1 g_2 in Ker(phi) ==> phi(g_1 g_2) = phi(g_1)phi(g_2) = e mul e = e$
        - $g in Ker(phi) ==> phi(g^(-1)) = (phi(g))^(-1) = e^(-1) = e$
        - Пусть $h in Ker phi$, $g in G$. 
            $ 
                phi(g h g^(-1)) = phi(g) phi(h) phi(g^(-1)) = phi(g) e phi(g)^-1 = e ==> g h g^(-1) in Ker phi.
            $
]

#notice[
    - Если $H < G'$, то $Im i_H = H$.
    - Если $H nsubg G$, то $Ker pi_H = H$.
]

#def[
    - _Мономорфизм_ --- инъективный гомоморфизм.
    - _Эпиморфизм_ --- сюръективный гомоморфизм.
    - _Изоморфизм_ --- биективный гомоморфизм.
]

#def[
    Если между группами существует изоморфизм, то говорят, что они _изоморфны_. Обозначается $G iso G'$.
]

#lemma[
    $phi: G --> G'$ --- гомоморфизм. Тогда $phi$ инъективный тогда и только тогда, когда $Ker phi = {e}$.
]

#proof[
    "$==>$": если $phi$ --- инъективный, то 
    $ abs(Ker phi) = abs(phi^(-1)(e)) <= 1 ==> Ker phi = {e} $

    "$<==$": Пусть $Ker phi = {e}$. Если $phi(g_1) = phi(g_2)$, то $phi(g_1 g_2^(-1)) = e$, что равносильно $g_2 g_1^(-1) in Ker phi = {e}$, откуда $g_1 = g_2$.
]

#notice[
    Попробуем понять что-то про общию структуру гомоморфизмов, а точнее про то как превратить из в изоморфизм.
]

#pr[
    Пусть $phi: G --> G'$ --- гомоморфизм; $H nsubg G, space H subset Ker phi, H' < G', space H' supset Im phi$. Тогда определим гомоморфизм $wave(phi): $
    $ 
        G fg H &--> H' \
        g H &arrow.bar phi(g)
     $
]

#proof[
    Пусть $g_1 H = g_2 H ==> g_2 = g_1 h, space h in H subset Ker phi$.
    $
        phi(g_2) = phi(g_1)phi(h) = phi(g_1) = wave(phi)(g_1 g_2 H)) = \
        phi(g_1 g_2) = phi(g_1) phi(g_2) = wave(phi)(g_1 H) wave(phi)(g_2 H).
    $
]

#notice[
    Пусть $grave(phi)$ --- как выше. Тогда $phi = i_H wave(phi) pi_H$
    
    #align(center)[#commutative_diagram(
        node((0, 0), $G$),
        node((0, 2), $G'$),
        node((1, 0), $G fg H$),
        node((1, 2), $H'$),
        arr((0, 0), (0, 2), $phi$),
        arr((0, 0), (1, 0), $pi_H$),
        arr((1, 0), (1, 2), $wave(phi)$, "dashed"),
        arr((1, 2), (0, 2), $i_(H')$, "inj"),
    )]
]

#th(name: [о гомоморфизме])[
    Пусть $phi: G --> G'$ --- гомоморфизм. Тогда индуцированный гомоморфизм
    $ 
        G fg Ker phi limits(-->)^(Ker wave(phi)) Im phi
    $
    является изоморфизмом.

    aka гомоморфный образ группы изоморфен факторгруппе по ядру гомоморфизма по закону коммунизма.
]

#proof[
    $Im wave(phi) = Im phi ==> wave(phi)$ --- сюръективно.
    Пусть $g mul Ker phi in Ker wave(phi) ==> wave(phi)(g Ker phi) = e$, тогда $g in Ker phi ==> g mul Ker phi = e Ker phi$. \
    Таким образом $Ker wave(phi) = {e mul Ker phi} ==> wave(phi)$ --- инъективно.
]

#example[
    Пусть $CC^* limits(-->)^phi RR^*$: $z maps abs(z)$. Тогда $Ker phi = RR^*_+ iso RR$ (например, через $ln$). Обозначается такое ядро $TT$, оно равно ${z in C^* bar abs(z) = 1}$. Значит $CC^* fg TT iso RR^*$ по теореме о гомоморфизме.

    А еще можно сказать, что $TT iso RR fg ZZ$.
]

#th(name: "О классификации цилических групп")[
    Пусть $G$ --- циклическая группа. 
    + Если $abs(G) = infinity ==> G iso ZZ$.
    + Если $abs(G) = n ==> G iso ZZ \/n ZZ$
]
#proof[
    Пусть $G = gen(g)$. 
    $
        ZZ &limits(-->)^(phi) G \
        k &maps g^k
    $
    $g^(k+l) = g^k g^l,$ то есть $phi$ --- гомоморфизм, $Im phi = G$.\
    Утверждается, что подгруппы $ZZ$ имеют вид $n ZZ, "где" n = 0,1,2,...$. Мы уже исследовали их, когда говорили про теорию идеалов. Подгруппы $ZZ$ --- идеалы (нетрудно проверяется), поэтому они имеют такой вид.

    Осталось посмотреть что будет, если $Ker phi = n ZZ, n in NN$. Тогда по теореме о гомоморфизме $G iso ZZ fg Ker phi = ZZ fg n ZZ$. Если же $Ker phi = 0 ZZ = {0}$, то $G iso ZZ fg Ker phi = ZZ fg {0} iso ZZ$.
]

#th(name: [О произведении подгрупп])[
    Пусть $H nsubg G$, $K < G$. Тогда
    + $H K < G$.
    + $H nsubg H K$, $H sect K nsubg K$
    + $H K fg H iso K fg (H sect K)$
]

#proof[
    Заметим, что $K H = limits(union.big)_(k in K) k H = union.big H k = H K$.

    + #[
        $H K != empty$ \
        $(H K)(H K) = H (K H) K =  H H K K = H K$\
        $(H K)^(-1) = K^(-1) H^(-1) = K H = H K$\
        Мы ползовались тем, что $ K H = union.big_(k in K) k H = union.big H k = H K $
    ]

    + #[
        Если $H nsubg G$, то $H nsubg H K$. Это тривиально.
        Второе утверждение следует из третьего.
    ]
    
    + #[ 
        Рассмотрим
        $
            phi: K &--> H K fg H \
            k &maps k H
        $

        Тогда $phi(k_1 k_2) = (k_1 k_2) H = k_1 H k_2 H = phi(k_1) phi(k_2)$, значит $phi$ --- гомоморфизм.

        Проверим, что $Im phi = H K fg H$. Рассмотрим $a in H K fg H$. $a = (k h) H = k H = phi(k) ==> a in Im phi$.

        $Ker phi = {k in K bar k H = e H} = {k in K bar k in H} = K sect H = H sect K nsubg K$.

        Тогда по теореме о гомоморфизме, $K fg (H sect K) iso H K fg H$.
    ]
]
