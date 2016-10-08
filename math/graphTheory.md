# 圖論筆記 | graph theory note

邊的種類  
`undirected edge`：  
`directed edge (u, v)`：u常被稱為`origin`、`tail`，v常被稱為`destination`、`head`  

圖的種類
`undirected graph (undigraph)`：只含無向邊的graph  
`directed graph (digraph)`：只含有向邊的graph  
`mixed graph`：同時含有無向邊和有向邊的graph  
`multigraph`：有很多組\( (u,v) \in E\)  
`loop`：存在\( (i,i) \in E\)  
`simple graph`：無loop，非multigraph  
`complete graph`：每對頂點都有邊連接，記做 \( K\_n \)    
`bipartite graph`：跟另一團的相連，但不跟自己團相連  
`complete bipartite graph`：A團中的每個點各連到B團中的每個點，記做\( K\_{m,n}, |A| = m, |B| = n\)        
`degree`：連到一頂點的邊的數量  

* 若邊為loop，則它造成的degree要多算一次  
* directed graph的degree = in + out  
  
$$ \sum_{i \in V} d_i = 2 * |E| $$  
  
$$ \sum\_{i \in V} d\_i^{in} = \sum\_{i \in V} d\_i^{out} $$  
  
`isolated vertex`：沒有任何邊連到它的vertex
  
## subgraph
`subgraph`：  
`induced subgraph`：刪掉部份點，且刪掉連到那些點的所有邊  
`spanning subgraph`：含所有的點（即點集合同原本的graph），但不一定有所有的邊
`regular`：max degree = min degree  
`N-regular`：相等的degree = N
`underlying graph`：digraph的unconnected版本  
  
  
##connected
`connected component`：  
`K(G)`：graph G中connected component的個數  
`strongly connected (DAG)`：對digraph中的任音兩點u, v, u ≠ v，皆存在一條u → v的路徑  
`weakly connected`：若digraph不為strongly connected，但其underlying graph為connected，則稱之  
`biconnected`：無articulaton point的無loop，connected undirected graph  
`biconnected component`：一個graph中，最大的binnected subgraph
  
##planar  
`planar (graph)`：可以被畫成沒有邊疊在一起的graph  
`planar drawing`：畫planar graph的畫法
``：
``：
``：

##matching
`matching`：
`maximum matching`：
`perfect matching`：若M滿足 |V| = 2 * |M|  
`complete matching`：
``：

##其它
`elementary contraction`：若把H中相鄰的某兩點「黏」在一起可得到G，則稱G為H的──  
其中，H稱為`contractible` to G  
`homeomarphic`：若二個graph皆可由相同的某graph（可以是第三者graph）在邊上加點而得，則稱此二graph為──
`clique`：G = (V,E), \( V' \subseteq V \) ，其中V'內任兩點皆相鄰
`independent set`：G = (V,E), \( V' \subseteq V \)，其中V'內任兩點皆**不**相鄰
`vertex cover`：G = (V,E), \( V' \subseteq V \)，其中G的每一邊都至少會接到V'中的一點(`V-independent set`)

## tree
`forest`：acyclic, undirected graph  
`深度(depth)`：由node v上溯至根節點的edge數。例如：根節點的depth為0。  
`高度(height)`：node v至離它最遠的leaf的edge數。
`path`：由祖先到後代的路徑
`length`：path中的edge數  
`degree`：相鄰的點的個數，或相接的邊的個數  
`ordered tree`：child在左在右有差（但當child中有一個時，在左在右都沒差）  
`unordered tree`：childe左左在右沒差  