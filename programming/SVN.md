#SVN筆記

官網：<https://subversion.apache.org/>

##基本操作
###把遠端拉下來
```
svn checkout 遠端url
```
或
```
svn co 遠端url
```

##備份repo
###svnadmin dump
參考：<http://gnumen.org/blog/admin/25/02/2013/importing-repository-sfnet-classic-new-project>

1.
```
svnadmin create 資料夾名稱
```
2. 切換到本地已有的SVN repo的root
3. 
```
svn import file:///步驟一建出的資料夾的絕對路徑 -m "一些訊息"
```
4. 找個地方建一個臨時資料夾
5. 切換到臨時資料夾裡
6. 
```
svn checkout file:///步驟一建出的資料夾的絕對路徑
```
7. 回到步驟一建出的資料夾的所在位置
8. 
```
svnadmin dump 步驟一建出的資料夾的名稱 > dumpFileName
```
dumpFileName即為產出的dump file

###svnrdump
svnrdump自SVN 1.7後才有，使用前需注意SVN版本  

使用方式
```
svnrdump dump SVNUrl > dumpFileName
```
例如SVN的網址位於：http://mushiyos-oj-code.googlecode.com/svn/，且dump file要叫做google_code_dump，則指令就下
```
svnrdump dump http://mushiyos-oj-code.googlecode.com/svn/ > google_code_dump
```
也可以只dump trunk， branches，甚至是底下的資料夾，例如：
```
svnrdump dump https://subversion.assembla.com/svn/mushiyos-oj-code/trunk/Codeforces > parital_dump
```
雖然只dump一部份的檔案，但路徑結構會保留下來，也就是說，以上面的例子，Codeforces仍會在trunk底下，之後做import時，root下面還是trunk，而不是Codeforces
