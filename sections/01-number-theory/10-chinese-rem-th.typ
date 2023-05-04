#import "../../utils/core.typ": *

== Китайская теорема об остатках

#th[    
    Пусть $m_1 bot m_2, space.quad a_1, a_2 in ZZ$, тогда:

    +   $exists x_0 in ZZ$: 
        $cases(
            x_0 equiv(m_1) a_1,
            x_0 equiv(m_2) a_2
        )$
    
    +   Пусть $x_0$ удовлетворяет системе выше, тогда:
    
        $x in ZZ$, где $x$ удовлетворяет системе выше $<==> x equiv(m_1 m_2) x_0$
]

#proof[
    +   $x_0 = a_1 + k m_1 = a_2 + l m_2 ==> k m_1 - l m_2 = a_2 - a_1$ --- линейное диофантово уравнение с двумя неизвестными $k, l$
        
        $m_1 bot m_2 ==>$ у него есть решение $(k_0, l_0)$
        
        $x_0 = a_1 + k_0 m_1$ --- искомое

    +
        "$arrow.l.double$":
        $x equiv(m_1m_2) x_0 ==> 
        cases(
            x equiv(m_1) x_0,
            x equiv(m_2) x_0
        ) ==>
        cases(
            x equiv(m_1) a_1,
            x equiv(m_2) a_2
        )$

        "$arrow.r.double$":
        $x$ удовлетворяет системе из теоремы $==>
        cases(
            x equiv(m_1) x_0,
            x equiv(m_2) x_0
        ) ==>
        cases(
            m_1 divides (x - x_0),
            m_2 divides (x - x_0)
        ) limits(==>)^(m_1 bot m_2) m_1 m_2 divides (x - x_0)$
]

#def[    
    Пусть $R, S$ --- кольца с единицей. Отображение $phi: R -> S$ называется изоморфизмом колец, если: $phi$ биекция.
    
    +   $forall r_1, r_2: space phi(r_1 + r_2) = phi(r_1) + phi(r_2)$
    
    +   $forall r_1, r_2: space phi(r_1 r_2) = phi(r_1) phi(r_2)$
]

#pr[    
    Пусть $m_1 bot m_2$, тогда существует изоморфизм: $factor(ZZ, m_1 m_2) -> factor(ZZ, m_1 ZZ) times factor(ZZ, m_2 ZZ)$
    
    $[a]_(m_1m_2) |-> ([a]_(m_1), [a]_(m_2))$
]

#proof[
    
    Проверим корректность:
    
    "при подстановке одинаковых классов":

    Пусть $[a]_(m_1m_2) = [a']_(m_1m_2) ==>$
    $a equiv(m_1m_2) a' ==>$
    $cases(
        a equiv(m_1) a',
        a equiv(m_2) a'
    ) ==> ([a]_(m_1), [a]_(m_2)) = ([a']_(m_1), [a']_(m_2))$

    "сложения":
    
    $phi([a]_(m_1m_2) + [b]_(m_1m_2)) = phi([a + b]_(m_1m_2)) = ([a + b]_(m_1), [a + b]_(m_2)) = $
    
    $([a]_(m_1), [a]_(m_2)) + ([b]_(m_1), [b]_(m_2)) = phi([a]_(m_1m_2)) + phi([b]_(m_1m_2))$
    
    "умножения":
    
    $phi([a]_(m_1m_2) dot.c [b]_(m_1m_2)) = phi([a dot.c b]_(m_1m_2)) = ([a dot.c b]_(m_1), [a dot.c b]_(m_2)) = $
    
    $([a]_(m_1), [a]_(m_2)) dot.c ([b]_(m_1), [b]_(m_2)) = phi([a]_(m_1m_2)) dot.c phi([b]_(m_1m_2))$
    
    Проверим биективность, инъективность и сюръективность:

    $phi$ --- отображение между конечными равномощными множествами, поэтому оно биективно $<==>$ оно сюръективно $<==>$ оно инъективно.

    Действительно, если $phi: A -> B, space |A| = |B| < oo$ инъективно, 
    то полный прообраз любого элемента из $B$ состоит из не более чем одного элемента из $A$ (определение инъективности). 

    А если сложить количества прообразов у всех элементов из $B$, то должно получиться в точности $|A|$, так как каждый прообраз --- чей-то образ. 

    Но тогда каждый прообраз состоит из в точности одного элемента, т. е. $phi$ --- биекция. 
    
    Аналогично можно рассуждать и про сюрьективное отображение.

    По китайской теореме об остатках $forall a_1, a_2 in ZZ space exists a in ZZ: 
    cases(
        a equiv(m_1) a_1,
        a equiv(m_2) a_2
    )$

    Таким образом $phi$ --- биекция.
]


