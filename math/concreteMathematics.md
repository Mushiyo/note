# 水泥數學筆記

書藉網站：<http://www-cs-faculty.stanford.edu/~uno/gkp.html>

## Ch 1. Recurrence

## Ch 2. Sums

## Ch 3. Integer Functions 
符號
\\(\lfloor x \rfloor\\) 小於等於x的最大整數
\\(\lceil x \rceil\\) 大於等於x的最小整數
\\({x} = x - \lfloor x \rfloor\\) x的分數部份
\\([\alpha .. \beta]\\) 即[]區間


## Ch 4. numbery theory
* 在本章中p表示質數

`質數`：只有二個因數（1和它自己）的數
`合成數`：有三個以上因數的數

* 1不是質數
* 所有大於1的數不是質數就是合成數
* 第n個質數\\( P_n \sim n * \ln n\\)

**prime number theorem**
小於x的質數個數 \\( \pi(x) \sim \frac{x}{\ln x}\\)

**算數基本定理 (Fundamental Theorem of Arithmetic)**
若x為整數且x > 1，則x的因式分解唯一


## Ch 5. Binomial Coefficients, Hypergeometric Functions
$$
\binom{r}{0} = 1, \binom{r}{1} = r, \binom{r}{2} = \frac{r(r - 1)}{2}
$$

p.156 **symmetry identidy**
$$
\binom{n}{k} = \binom{n}{n - k}
$$

p.157 **absorption identidy**
$$
\binom{r}{k} = \frac{r}{k} \binom{r - 1}{k - 1} \\\
=> k \binom{r}{k} = r \binom{r - 1}{k - 1} \\\
=> (r - k) \binom{r}{k} = r \binom{r - 1}{k}
$$

p.158 **addtion formula**
$$
\binom{r}{k} = \binom{r - 1}{k} + \binom{r - 1}{k - 1} \\\
(r - k) \binom{r}{k} + k \binom{r}{k} = r \binom{r - 1}{k} + r \binom{r - 1}{k - 1}
$$

p.160 **summation on the upper index**
$$
\sum_{0 \leq k \leq n} \binom{k}{m} = \binom{0}{m} + \binom{1}{m} + \dots +  \binom{n}{m} = \binom{n+1}{m+1}
$$
  
p.161
$$
\sum_{k \leq n} \binom{m + k}{k} = \binom{m + n + 1}{m + 1} = \binom{m + n + 1}{n}
$$

p.164 **negating the upper index (或upper negation)**
$$
\binom{r}{k} = (-1)^k \binom{k - r - 1}{k}
$$

p.165
$$
(-1)^m \binom{-n - 1}{m} = (-1)^n \binom{-m - 1}{n} \\\
\sum_{k \leq m} \binom{r}{k} (-1)^k = \binom{r}{0} - \binom{r}{1} + \dots + (-1)^m \binom{r}{m} = (-1)^m \binom{r - 1}{m}
$$

  
  
## Ch 6. Special Numbers

## Ch 7. Generating Functions

## Ch 8. Discrete Probability

## Ch 9. Asmptotics

## Ch 10. Mathematical Analysis of Fundamental Algorithms 