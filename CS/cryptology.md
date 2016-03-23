#密碼學筆記

##Cryptography
加密解密皆為公開 => 通過各方驗證才是安全  
唯一該保密的是key  

###一些名詞
confidentiality：隱藏訊息不讓攻擊者發現  
message integrity：防止攻擊者修改訊息  
sender authentication：確定sender的身份確實是本人  
key space：所有可能的key所組成的集合  
computationally secure：找出key不合時間成本的密碼系統稱之

Kerckhoff's principle：

security by obscurity：

###對稱式密碼
symmetric-key  
secret-key  


####substitution cipher
藉由substitution table（可想成是一個1-1 and onto function）把每個字母轉換成另一個字母
key space: 26!（不分大小寫）

攻擊方法
1. brute-force (exhaustive key search)
   嘗試所有可能的key來破密
2. 頻率分析

* 好的密碼應隱藏明文的統計性質

##cryptanalysis （破密學、密碼分析學）
###classical cryptanalysis
由密文y還原出明文x，或由密文y還原出key k
####mathematical analysis
####brute-force analysis

###implementation attacks

###social engineering