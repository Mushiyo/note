# 機率筆記

課本：[A First Course in Probability 6e](http://www.pearsonhighered.com/pearsonhigheredus/educator/product/products_detail.page?isbn=0130338516)

##機率三公理
令E為事件，S為樣本空間，P(E)記為事件E發生的機率，則
**公理一** 0 ≦ P(E) ≦ 1  
**公理二** P(S) = 1  
**公理三** 對於任意互斥事件\\( E_1 , E_2, \dots \\)的序列（即，當i ≠ j 時，\\(E_i E_j = \emptyset \\)）  

$$
P(\bigcup_{i = 1}^{\infty} E_i ) = \sum_{i = 1}^{\infty} P(E_i)
$$

公理三衍生1：**空事件的發生機率為0**  
設有互斥事件序列\\(E_1, E_2, …\\)，其中\\(E_1 = S, E_i = \emptyset \text{for i} > 1\\)，則  
$$
P(S) = \sum_{i = 1}^{\infty} = P(S) + \sum_{i=2}^{\infty}P(\infty) \\
=> P(\infty) = 0
$$

公理三衍生2：公理三有限序列也成立
$$
P(\bigcup_{i = 1}^{n} E_i ) = \sum_{i = 1}^{n} P(E_i )
$$


一些簡單性質
1. \\( P(E^c) = 1 - P(E) \\)
2. 若\\( E \subset F\\)，則\\( P(E) \leq P(F)\\) （證明於p.32）
3. \\( P(E \cup F) = P(E) + P(F) - P(EF)\\) （證明於p.32）
4. \\( P(E_1 \cup E_2 \cup \dots \cup E_n) = \sum_{i = 1}^{n}P(E_i) - \sum{i_1 < i_2} P()\\)

##Ch3 條件機率
`P(E|F)`：在F發生的情形下，E發生的機率
若P(F) > 0，則\\( P(E|F) = \frac{P(EF)}{P(F)} \\)
同乘P(F) => P(F)P(E|F)=P(EF)

**multiplication rule**  
\\( P(E_1 E_2 E_3 \dots E_n) = P(E_1 )P( E_2 | E_1 )P( E_3 | E_1 E_2 ) \dots P(E_n | E_1 \dots E_{n-1}) \\)

證明 p.68

**貝氏定理**
今E, F為二事件，\\( E = EF \cup EF^C \\)
\\( EF, EF^C \\)顯然為互斥事件，則由公理之
$$\begin{align}
P(E) &= P(EF) + P(EF^C) \\\
     &= P(F)P(E|F) + P(F^C)P(E | F^C) \\\
     &= P(E|F)P(F) + P(E|F^C)[1-P(F)]
\end$$