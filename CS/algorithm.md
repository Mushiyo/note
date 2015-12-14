# 演算法

##視覺化展示
* [VisuAlgo](http://www.comp.nus.edu.sg/~stevenha/visualization/) Steven Halim的演算法視覺化展示，[另一網址](http://visualgo.net)http://visualgo.net
* [Algomation](http://www.algomation.com/) 演算法視覺化展示
* [Data Structure Visualizations](http://www.cs.usfca.edu/~galles/visualization/Algorithms.html)

##名詞解釋
`locality`：剛用過的，很快會再用到

##樹
###splay tree

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