# 離散筆記

##數論
\\(a | b\\)：a整除b(b是a的倍數)，\\(\exists c (ac = b)\\)
\\(a ]nmid b\\)：a不整除b

**THEOREM**  
令a,b,c為整數，其中a≠0，則  
1. 若 a | b 且 a | c，則 a | (b + c)
2. 若 a | b ，則對於所有整數c， a | bc
3. 若 a | b 且 b | c，則 a | c

##Mod運算
\\( (a + b) \mod n = [(a \mod n) + (b \mod n)] \mod n \\)
\\( (a - b) \mod n = [(a \mod n) - (b \mod n)] \mod n \\)
\\( (a \times b) \mod n = [(a \mod n) \times (b \mod n)] \mod n \\)

例：
\\( a^3 \mod n = [(a \mod n)^2 \mod n \times a \mod n] \mod n \\)

###Mod運算的性質
\\( a \equiv b \mod n => n | (a - b) \\)
\\( a \equiv b \mod n => b \equiv a \mod n \\)
\\( a \equiv b \mod n , b \equiv c \mod n => a \equiv c \mod n \\)

封閉性  
令\\(a, b \in Z_m\\)則\\(a + b \mod m\\)及\\(a \times b \mod m \in Z_m\\)

交換律  
\\( (w + x) \mod n = (x + w) \mod n \\)  
\\( (w \times x) \mod n = (x \times w) \mod n \\)

結合律  
\\( [(w + x) + y] \mod n = [w + (x + y)] \mod n \\)
\\( [(w \times x) \times y] \mod n = [w \times (x \times y)] \mod n \\)

分配律  
\\( [w \times (x + y)] \mod n = [(w \times x) + (w \times y)] \mod n \\)  
~~~ \( [w + (x \times y)] \mod n = [(w + x) \times (w + y)] \mod n \) ~~~ 筆記有誤 
\\( [(w + x) \times y] \mod n = [(w \times y) + (x \times y)] \mod n \\)

單位元  
\\( (0 + w) \mod n = w \mod n \\)
\\( (1 \times w) \mod n = w \mod n \\)

加法反元素-w  
$$
  \text{for each } w \in  , 存在z \in \mathbb{Z} 使得 w + z \equiv 0 \mod n
$$

###快速運算法
當d很大時，計算\\( h^d \mod n \\)
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
已知a, b,找出s, t使得 \\( s \times a  + t \times b = gcd(a, b)\\)

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