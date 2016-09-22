# 演算法

##視覺化展示
* [VisuAlgo](http://www.comp.nus.edu.sg/~stevenha/visualization/) Steven Halim的演算法視覺化展示，[另一網址](http://visualgo.net)http://visualgo.net
* [Algomation](http://www.algomation.com/) 演算法視覺化展示
* [Data Structure Visualizations](http://www.cs.usfca.edu/~galles/visualization/Algorithms.html)

##名詞解釋
`locality`：剛用過的，很快會再用到
`in-place`：若演算法只需O(1)輔助空間，則稱為in-place
`tractable`：存在polynomial time演算法
`intractable`：不存在polynomial time演算法
`tail recursion`：recursive在最後一步，可以很容易的被改寫成iterative

##技巧
###動態規劃 (Dynamic Programming, DP)
最佳化問題、計數問題
* `optimal sub-structure`
* `overlapping`

####top down
檢查當前的state是否有算過
有→查表
否→遞回往下查表&計算

####bottom up

##複雜度分析
\\(O(log n) < O(\sqrt{n}) < O(n) < O(nlogn) < O(n^2) < O(n^3) < O(2^n)\\)

##樹
名詞解釋見[這裡](../math/graphTheory.md#tree)

###splay tree
* 利用locality，query到的element會升為root
* 以二層旋轉的方式上升，每回合旋轉後v會取代其grandparent的位置
* node的旋轉（四個case） 

###B-tree

###紅黑樹
* 每個除leaf，每結點都有二個children
* balanced tree

####四個性質
1. root為黑
2. leaf為黑
3. 紅子必黑
4. 由root到任意一個leaf，都有相同的黑結點個數

####插入
* 除非是root，否則都先染紅 
* 遇到雙紅違規：分幾個case處理

####刪除


##計算幾何
**Convex Combination**
已知一點集 \\(S = {p_1, \dots, p_n} \subseteq \varepsilon^2\\)  
令\\(\lambda = <\lambda _1, \dots, \lambda _n>^T \in R^n, \lambda _1 + \dots + \lambda _n = 1\\)，且\\(min \\{ \lambda _1, \dots, \lambda _n \\} \geq 0\\)  
若點\\(P = [p_1, \dots, p_n] \lambda = \lambda _1 p_1 + \dots + \lambda _n p_n \\)
則稱P為S的convex combination
