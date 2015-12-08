# 離散筆記


##\mod運算的性質

交換律  
\\( (w + x) \mod n = (x + w) \mod n \\)  
\\( (w \times x) \mod n = (x \times w) \mod n \\)

結合律  
\\( [(w + x) + y] \mod n = [w + (x + y)] \mod n \\)
\\( [(w \times x) \times y] \mod n = [w \times (x \times y)] \mod n \\)

分配律  
\\( [w \times (x + y)] \mod n = [(w \times x) + (w \times y)] \mod n \\)
~~~ \( [w + (x \times y)] \mod n = [(w + x) \times (w + y)] \mod n \) ~~~ 筆記有誤 

單位元  
\\( (0 + w) \mod n = w \mod n \\)
\\( (1 \times w) \mod n = w \mod n \\)

加法反元素-w  
$$
  \text{for each } w \in  , 存在z \in \mathbb{Z} 使得 w + z \equiv 0 \mod n
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