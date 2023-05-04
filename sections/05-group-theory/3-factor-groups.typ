#import "../../utils/core.typ": *

== Нормальные подгруппы и факторгруппы

#def[
    Подргруппа $H$ группы $G$ называется _нормальной подгруппой_, если: 
    $
        forall g in G space forall h in H : g h g^(-1) in H 
    $
    Обозначается $H nsubg G$.
]

#props[
    Пусть $H$ подгруппа $G$. Тогда 4 условия эквивалентны:
    + $H nsubg G$
    + $forall g in G: g H = H g$
    + $forall g in G: g H g^(-1) subset H$
    + $forall g in G: g H g^(-1) = H$
]

#proof[
    - "$1 <==> 3$": тривиально.
    - "$3 ==> 4$": Если $g H g^(-1) = H$ для каждого $g$, то и $g^(-1) H g = H$. Тогда 
    $
        g^(-1) H g subset H ==> H g subset g H ==> H subset g H g^(-1).
    $
    Получилось обратное включение.
    - "$2 <==> 4$": получается умножением/делением справа на $y$.
]

#notice[
    Условие 2 можно переписать как $G fg H = H \\ G$.
]

#notice[
    Если $G$ --- Абелева, то $H nsubg G$.
]

#notice[
    $(G : H) = 2 ==> H nsubg G$
]

#def[
    Пусть $H nsubg G$. На фактор-множестве $G fg H$ введем операцию умножения:
    $
        (G fg H) times (G fg H) &--> G fg H \
        (M, N) &maps M N
    $

    Такая структура называется _факторгруппой_.
]

#th[
    $G fg H$ с введенным выше умножением --- группа.
]

#proof[
    + #[
        Замкнутость: 
        $
            (g_1 H) (g_2 H) = g_1 H g_2 H = g_1 g_2 H H = g_1 g_2 H.
        $
    ]
    
    + #[
        Ассоциативность:
        $ (M N) P = {(m n)p bar m in M; n in N, space p in P} = M(N P) $
    ]
    
    + #[
        Нейтральный элемент:
        $ e H space#[--- нейтральный элемент] $
    ]
    
    + #[
        Обратный к $g H fg$ --- это $g^(-1)H$
        $ g H mul g^(-1) H = (g g^(-1))H = e G $
        $ g^(-1)H mul g H = (g^(-1)g)H = e H $
    ]
]