# 離散筆記

##邏輯

### Propositional Logic
`conjunction`: \(\land\)  
`disjunction`: \(\lor\)  
`conditional statement`（又稱`implication`）: \(\rightarrow\)  
`biconditional statement`（又稱`bi-implications`）: \(\leftrightarrow\)

真值表  

  p   |   q   | \(p \land q\) | \(p \lor q\) | \(p \oplus q\) | \(p \rightarrow q\) | \(p \leftrightarrow q\)
----- | ----- | ------------- | ------------ | -------------- | ------------------- | ------------
  T   |   T   |       T       |      T       |       F        |           T         | T
  T   |   F   |       F       |      T       |       T        |           F         | F
  F   |   T   |       F       |      T       |       T        |           T         | F
  F   |   F   |       F       |      F       |       F        |           T         | T
  
優先序由先到後：﹁ > ^ = V > → = ←→

`converse`: p → q 的converse為 q → p  
`contrapositive`: p → q 的contrapositive為 ﹁ q → ﹁ p  
`inverse`: p → q 的inverse為 ﹁ p → ﹁ q  
`equivalent`: 當二個proposition在各種情形下皆有相同真值時稱之  

`tautology`: 不論propositional variable的真值為何，結果都恆為真的proposition。例： p V ﹁p  
`contradiction`: 不論propositional variable的真值為何，結果都恆為假的proposition。例： p ^ ﹁p  
`contingency`: 不是tautology也不是contradiction的proposition  

`logically equivalent`: 已知二個proposition p 及 q，且 p ←→ q 為tautology時稱之。記為\(p \equiv q\)  

#### some laws
`De Morgan's Law`  
1. \(\lnot (p \land q) \equiv \lnot p \lor \lnot q\)
2. \(\lnot (p \lor q) \equiv \lnot p \land \lnot q\)

Identity laws  
1. \(p \lor F \equiv p\) 
2. \(p \land T \equiv p\)

Domination laws  
1. \(p \lor T \equiv T\)
2. \(p \land F \equiv F\)

Idempotent laws  
1. \(p \lor p \equiv p\)
2. \(p \land p \equiv p\)

Double negation law
\(\lnot (\lnot p) \equiv p\)

Commutative laws 交換率
1. \(p \lor q \equiv q \lor p\)
2. \(p \land q \equiv q \land p\)

Associative laws 結合率
1. \((p \lor q) \lor r \equiv p \lor (q \lor r)\)
2. \((p \land q) \land r \equiv p \land (q \land r)\)

Distributive laws 分配率
1. \(p \lor (q \land r) \equiv (p \lor q) \land (q \lor r)\)
2. \(p \land (q \lor r) \equiv (p \land q) \lor (q \land r)\)

Absorption laws
1. \(p \lor (p \land q) \equiv p\)
2. \(p \land (p \lor q) \equiv p\)

Negation laws
1. \(p \lor \lnot p \equiv T\)
2. \(p \land \lnot p \equiv F\)


##集合論
`empty set`：沒有元素的集合，記為{}或\(\emptyset\)
`singleton set`：只有一個元素的集合
`subset`：若A的所有元素也都是B的元素，則稱A為B的subset，記為\(A \subseteq B\)
`proper subset`：若A為B的subset，但A≠B，則稱A為B的proper subset，記為\(A \subset B\)

`cardinality`：集合中的相異元素個數，集合S的cardinality記為|S|
`power set`：集合S的power set為所有S的子集所構成的集合，記為P(S)

例：
1. 空集合的power set \(P(\emptyset) = {\emptyset}\)
2. P({0, 1}) = {\(\emptyset\), {0}, {1}, {0, 1}}

若集合S有n個元素，則P(S)有\(2^n\)個元素（n個元素，「取」和「不取」二種選擇）

`ordered n-tuple \((a_1, a_2, \dots, a_n)\)`：為一有序元素集合(collection)，其中\(a_1\)為第一個元素，…，\(a_n\)為第n個元素
`ordered pairs`：即2-tuple
集合\(A_1, \dots, A_n\) 的`Cartesian product`：\(A_1 \times \dots \times A_n = \{ (a_1, \dots, a_n) \mid a_i \in A_i \) for \(i = 1, \dots, n \}\)

`disjoint`、`mutually disjoint`：若二個集合的交集為空集合，則稱二集合disjoint
`index set`或`set of indices`：令I為非空集合，U為宇集，對於每個，則I稱為index set，且I中的每個元素i稱為`index`

###集合的運算
`symmertric difference`：記做A△B，A△B  = (A - B) \(\cup\) (B - A)

###relation
`(binary) relation` from A, B：集合A,B的Cartesian product(即A x B)的任意**子集**稱之
`(binary) relation` on A：集合A對自已的Cartesian product(即A x A)的任意**子集**稱之
`related to`：當\((a,b) \in R\)，則稱a is related to b by R

注意:
* relation本身亦是集合，其元素皆為2-tuple
* 所有集合的運算也適用relation

####relation的性質

###集合的表示方式
`roster method`：指一一列出集合的元素以描述集合的方式，例如：S = {1, 2, 3}即是用roster method來描述集合
`Venn diagram`
`membership table`：一種類似truth table的表格，若元素屬於某個集合則填上1，否則填上0
例：

  A  |  B  |  A
:---:|:---:|:---:
  0  |  0  |  0
  0  |  1  |  0
  1  |  0  |  0
  1  |  1  |  1

Venn diagram即是圖象化的membership table

##代數
###Group 群

###Ring 環
ring (R,+,‧)，其中R為集合，+與‧為運算子，滿足
1. +,‧封閉性
2. +,‧結合率
3. +交換率
4. +單位元(identity)
5. +反元素
6. + over ‧的分配率  

* +單位元通稱為ring的zero（零）

commutative ring：\(\forall a, b \in R, a * b = b * a\)的ring  
proper divisors of zero / proper zero divisors / zero divisors：在a≠z且b≠z的情形下，若a*b＝Z，則稱a,b為proper divisors of zero  
ring with unity：\(\forall a \in R, 存在u \in R\)，使得a * u = u * a = a，且u≠0的ring
unity / multiplicative identity：上一句的u即是乘法單位元  
units：R中相乘會變成u的元素  
如：\(a, b \in R, a * b = b * a = u\)中的a, b  
multiplicative inverse：上例中的a,b互為彼此的乘法反元素

####Intefral domain
1. commutative
2. has unity a z
3. no zero divisors

####Field 體
1. commutative
2. has unity a z
3. has multiplicative inverse of a z for every a   
  

####Subring
已知一個ring (R,+,‧)若存在\(S \subseteq R\)且\(S \neq \emptyset\)，(S,+,‧)為ring，則稱S為R的subring

#####Ideal
若I為R的ideal，則I滿足在
1. I為R的subring\((a - b) \in I\)
2. \(x \in I \& r \in R => x * r \in I \& r * x \in I\)

* 對任意\(n \in Z^+ , n > 1, Z_n\)中共有\(\phi(n)\)個units及\(n - 1 - \phi(n)\)個proper divisor

##數論
\(a | b\)：a整除b(b是a的倍數)，\(\exists c (ac = b)\)
\(a \nmid b\)：a不整除b

**THEOREM**  
令a,b,c為整數，其中a≠0，則  
1. 若 a | b 且 a | c，則 a | (b + c)
2. 若 a | b ，則對於所有整數c， a | bc
3. 若 a | b 且 b | c，則 a | c

###Mod運算
\((a + b) \mod n = [(a \mod n) + (b \mod n)] \mod n\)
\((a - b) \mod n = [(a \mod n) - (b \mod n)] \mod n\)
\((a \times b) \mod n = [(a \mod n) \times (b \mod n)] \mod n\)

例：
\(a^3 \mod n = [(a \mod n)^2 \mod n \times a \mod n] \mod n\)

####Mod運算的性質
\(a \equiv b \mod n => n | (a - b)\)
\(a \equiv b \mod n => b \equiv a \mod n\)
\(a \equiv b \mod n , b \equiv c \mod n => a \equiv c \mod n\)

封閉性  
令\(a, b \in Z_m\)則\(a + b \mod m\)及\(a \times b \mod m \in Z_m\)

交換律  
\((w + x) \mod n = (x + w) \mod n\)  
\((w \times x) \mod n = (x \times w) \mod n\)

結合律  
\([(w + x) + y] \mod n = [w + (x + y)] \mod n\)
\([(w \times x) \times y] \mod n = [w \times (x \times y)] \mod n\)

分配律  
\([w \times (x + y)] \mod n = [(w \times x) + (w \times y)] \mod n\)  
~~~ \([w + (x \times y)] \mod n = [(w + x) \times (w + y)] \mod n\) ~~~ 筆記有誤 
\([(w + x) \times y] \mod n = [(w \times y) + (x \times y)] \mod n\)

單位元  
\((0 + w) \mod n = w \mod n\)
\((1 \times w) \mod n = w \mod n\)

加法反元素-w  
$$
  \text{for each } w \in  , 存在z \in \mathbb{Z} 使得 w + z \equiv 0 \mod n
$$

####快速運算法
當d很大時，計算\(h^d \mod n\)
例：
$$
  d = 23 \\\
  23 = 2^4 + 2^2 + 2^1 + 2^0 \\\
  [23]_{10} = [10111]_2 \\\
  h^{23} = (((h^2)^2 \times h)^2 \times h)^2 \times h \mod n \\\
  = h^{2^4} \times h^{2^2} \times h^2 \times h
$$


`歐幾里得演算法`：就是輾轉相除法  
`Extended Euclidean Algorithm`：
已知a, b,找出s, t使得 \(s \times a  + t \times b = gcd(a, b)\)

* `費馬小定理`
$$
  \text{If } a < P \text{，P是質數且}gcd(a, p) = 1 \\\
  a^{P-1} \equiv 1 \mod P 
$$
或者
$$
  g^a \mod P \equiv g^{a \mod P - 1} \mod P
$$

* `歐拉定理`（廣義的費馬小定理）
對於任意a < n，gcd(a, n) = 1，
則
$$
a^{\phi(n)} = 1 \pmod n
$$

###有名字的數
####Euclid numbers
$$
e_n = e_1 e_2 \dots e_{n+1} + 1
$$
Euclid numbers彼此互質

####Mersenne numbers
$$
2^p - 1, \text{p是質數}
$$

#### highly composite numbers
因數個數比任何小於它的正整數還要多的正整數

  
##圖論
見[這裡](graphTheory.html)