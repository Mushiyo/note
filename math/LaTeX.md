# $$\LaTeX $$

##軟體
* [MiKTeX](http://miktex.org/)
* [Texmaker](http://www.xm1math.net/texmaker/)
* [TeXworks](https://www.tug.org/texworks/)

##設定
###結構
```tex
\documentclass{article}
    設定區
\begin{document}
    文章內容
\end{document}
```

* 上面的article也可以是book, exam

###使用中文
####法一
設
```tex
\usepackage{CJKutf8}
```

文
```tex
\begin{CJK}{UTF8}{cwmb}
\end{CJK}
```

####法二
設
```tex
\usepackage{xeCJK}
\setCJKmainfront{字型}
```

套件：AMS-LATEX（使用數學）
package: amssymb, amsmath, amsthm
設
```tex
\newtheorem{thm}{Theorem}[chapter]
\newtheorem*{thm}{Theorem}
```

文
```tex
\begin{thm}
\end{thm}
```

###使用圖片
設
```tex
\usepackage{graphicX}
```

文
```tex
\begin{figure}
```

###數學模式
1. 隨文模式：在文句中
2. 展示模式：獨立成行

###指令名相關
```
\renewcommand{\原有的指令名}{\欲被取代的指令}
\newcommand{\自訂指令名}{\欲被取代的指令}
```

-----
  
##符號
* 別人做的精美符號表：<http://www.onemathematicalcat.org/MathJaxDocumentation/TeXSyntax.htm>
* [Detexify](http://detexify.kirelabs.org/classify.html) 畫符號給打法

inline mode
```
\(…\)
```
  
displayed mode
```
\[…\]
$$…$$
```
  
希臘字母
```
\alpha \delta \Delta
```
$$\alpha \delta \Delta$$
開頭大寫表示大寫字母，英文中有的字母直接打就好（例如：大寫alpha就是A，故沒有\Alpha）
  
指數
```
n^2
```
$$n^2$$
  
下標
```
F_n = F_{n - 1} + F_{n - 2}
```
$$F_n = F_{n - 1} + F_{n - 2}$$
  
分數
```
\frac{1}{2}, {1 \over 2}, ^1/_2
```
$$\frac{1}{2}$$
  
複合分數
```
\frac{\frac{1}{2}}{2}
```
$$\frac{\frac{1}{2}}{2}$$
  
組合
```
\binom{n}{k} or {n \choose k}
```
$$\binom{n}{k} or {n \choose k}$$
  
根號
```
\sqrt[3]{8} = 2, \sqrt{4} = 2
```
$$\sqrt[3]{8} = 2, \sqrt{4} = 2$$
  
連加
```
\sum_{i=1}^{10}i = 55
```
$$\sum_{i=1}^{10}i = 55$$
  
連乘
```
\prod_{i=1}^{5}i = 5!
```
$$\prod_{i=1}^{5}i = 5!$$
  
floor & ceiling
```
\lfloor x \rfloor, \lceil y \rceil
```
$$\lfloor x \rfloor, \lceil y \rceil$$
  
各式括弧
```
(x), [y], \{z\}
```
$$(x), [y], \\{z\\}$$
  
矩陣
```
\begin{matrix}
  1&2&3 \\
  4&5&6 \\
\end{matrix},
\begin{pmatrix}
  1&2&3 \\
  4&5&6 \\
\end{pmatrix},
\begin{bmatrix}
  1&2&3 \\
  4&5&6 \\
\end{bmatrix},
\begin{Bmatrix}
  1&2&3 \\
  4&5&6 \\
\end{Bmatrix},
\begin{vmatrix}
  1&2&3 \\
  4&5&6 \\
\end{vmatrix}
```
$$\begin{matrix}
  1&2&3 \\\
  4&5&6 \\
\end{matrix},
\begin{pmatrix}
  1&2&3 \\\
  4&5&6 \\
\end{pmatrix},
\begin{bmatrix}
  1&2&3 \\\
  4&5&6 \\
\end{bmatrix},
\begin{Bmatrix}
  1&2&3 \\\
  4&5&6 \\
\end{Bmatrix},
\begin{vmatrix}
  1&2&3 \\\
  4&5&6 \\
\end{vmatrix}$$
  
```
\quuiv
\pm
\lt
\gt
a \pmod b
a'
\not{a}
\bar{a}
\vec{v}
```
$$\equiv
\pm
\lt
\gt
a \pmod b
a'
\not{a}
\bar{a}
\vec{v}$$
  
```
f(n) = \left\{
  \begin{array}{1 1}
  n / 2 & \quad}
```
$$f(n) = \left \{
  \begin{array}{1 1}
  n / 2 & \quad}$$
  
##集合論
元素關係符號
```
\in \ni \notin
```

$$\in \ni \notin$$

集合關係符號
```
\subset \subseteq \subseteqq \supset \supseteq \supseteq
```
$$\subset \subseteq \subseteqq \supset \supseteq \supseteq $$

```
\nsubseteq \nsubseteqq \nsupseteq \nsupseteqq
```
$$\nsubseteq \nsubseteqq \nsupseteq \nsupseteqq $$


集合運算符號
```
\cup \cap
```
$$\cup \cap $$

##數論
mod
```
a \mod b, a \bmod b, a \pmod b
```
$$
a \mod b , a \bmod b , a \pmod b
$$

divisibility
```
 \mid \nmid
```
$$
\mid \nmid
$$
