# SQL筆記

##建資料表
```
CREATE TABLE 資料表名稱 (欄位1名稱 欄位1型態 PRIMARY KEY, 欄位2名稱 欄位2型態, 欄位3名稱 欄位3型態, ...);
```
註：
1. `PRIMARY KEY`可放在任何欄位之後，端看使用的database engine可能有不同的使用方式，使用前要先查reference
2. 端看使用的database engine可能有不同型態，使用前要先查reference  
   [SQLite datatype](https://www.sqlite.org/datatype3.html)

##插入資料
```
INSERT INTO 資料表名稱 VALUES (一列中的各欄值，記得按照順序及輸入對的型態);
```

##查詢|選取
選擇所有欄位
```
SELECT * FROM 資料表名稱
```

選擇符合條件的欄位
```
SELECT * FROM 資料表名稱 WHERE 條件判斷式
```
一些條件判斷式的例子`欄位i > 1990`、`欄位i > 1990 AND 欄位j = "something"`  

選擇並排序結果  
```
SELECT * FROM 資料表 ORDER BY 欄位
```
以上可以綜合起來
```
SELECT * FROM 資料表名稱 WHERE 條件判斷式 ORDER BY 欄位
```