# 線性代數筆記

## 行列式 (determinant)
###二階行列式
\相乘-/相乘
設A=\begin{bmatrix}
	  a&b \\\
	  c&d \\\
	\end{bmatrix}
則det(A) = a * d - b * c

##反矩陣
###二階反矩陣
\互換，/加負號，再乘上1/det(A)
設A=\begin{bmatrix}
	  a&b \\\
	  c&d \\\
	\end{bmatrix}
則inv(A) = 1/det(A) * \begin{bmatrix}
	  d&-b \\\
	  -c&a \\\
	\end{bmatrix}
	
##可逆矩陣 invertible matrix
又稱非奇異矩陣(nonsingular matrix)  
奇異：x ≠0 使得Ax = 0
若A為可逆，則  
1. 存在B使得BA=In=AB
2. 反矩陣存在
3. Ax = 0只有零解 => Ax = 0的唯一解為x = 0
4. A列等價於In
5. rank(A) = n
6. A為若干基本列矩陣乘積
7. det(A) ≠ 0 （可以想想二階的情形，若det(A) = 0，套進二階反矩陣公式時，因分母不得為0，故反矩陣不存在 ） 
8. adj(A)可逆
9. A的row / col vector線性獨立


##向量空間
###10公設
1. 向量加法封閉性
2. 純量積封閉性
3. 向量加法交換性
4. 向量加法結合性
5. 向量加法單位元
6. 向量加法反元素
7. 純量積對向量加法分配性
8. 純量積對純量加法分配性
9. 純量乘法對純量積結合性
10. 純量積之單位元

###子空間
####子空間的充要條件
設\((V, +, \cdot)\)為佈於F的向量空間，且\(W \subseteq V, W \neq \emptyset\)，則下列等價
1. \((W, +, \cdot)\)為\((V, +, \cdot)\)的子空間
2. \(\forall \alpha \in F, u,v \in W\)，則\(u + v \in W\)且\(\alpha v \in W\)
3. \(\forall \alpha, \beta \in F, u,v \in W\)，則\(\alpha u + \beta v \in W\)
4. \(\forall \alpha \in F, u,v \in W\)，則\(\alpha u + v \in W\)
5. \(\forall \alpha_i \in F, v_i \in W, i = 1, 2, \dots, k\)，則\(\sum_{i=1}^{k} \alpha_i v_i \in W\)

####子空間的必要條件
若W為V的子空間，則
1. \(0 \in W\)
2. 若\(v \in W\)，則\(-v \in W\)

####四個基本子空間
1. 行空間
2. 列空間
3. 核空間
4. 左核空間