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