# shell programming暨Linux（指令）筆記

## 學習資源
* [The Bash Academy](http://www.bash.academy/)
* [Bash Beginners Guide](http://www.tldp.org/LDP/Bash-Beginners-Guide/html/)
* [Bash Programming HOWTO](http://tldp.org/HOWTO/Bash-Prog-Intro-HOWTO.html)
* [Regexr — Learn Regular Expressions](http://regexr.com/)

## Linux
檔案權限
owner group other

* other指不在群組中的

資料夾的大小不包括在裡面的東西

## Linux指令
echo
ls 顯示當前資料夾內容。ls為list的縮寫
-l l為long的縮寫
cd 為change directory的縮寫
mkdir making directory
mv move的縮寫
rm remove
rmdir remove directory
pwd 為print working directory
.. 親目錄
. 當前目錄
~ 家目錄
jobs：列出在背景中的程式  
date 顯示日期時間
cat catenate, concatenate

less
/ 搜尋
f forward
b back
也可用方向鍵
q quit

curl c url see url
-L follow redirects
-o 檔名

`grep keyword file`

wc word count

alias 列出
`alias shortName='very very long name'` 設定以shortName表示very very long name

建立捷徑  
```bash
ln -s /original/very/very/very/long/path/name /new/short/pathName
```
### terminal
<kbd>Ctrl</kbd> + <kbd>c</kbd>：強制關閉  
<kbd>Ctrl</kbd> + <kbd>d</kbd>：強制關閉正在執行的程式  
<kbd>Ctrl</kbd> + <kbd>l</kbd>：洗螢幕  
<kbd>Ctrl</kbd> + <kbd>f</kbd>：往下，f for forward  
<kbd>Ctrl</kbd> + <kbd>b</kbd>：往上，b for back  
<kbd>Ctrl</kbd> + <kbd>z</kbd>：把程式丟到背景  

[.bashrc generator](http://bashrcgenerator.com/)

### directory
cd -：回前一個目錄  
pwd：顯示當前目錄  
rmdir：刪除沒有檔案的資料夾  
rm -r 資料夾：砍掉資料夾下的所有檔案  

### 壓縮、解壓縮
#### zip
打包多個檔案
```bash
zip zipFilename.zip file1 file2 ...
```

打包資料夾
```bash
zip -r zipFilename.zip directoryName
```

#### tar.gz
解壓縮
```bash
tar zxvf FileName.tar.gz
```

### Ubuntu
以root的身份開視窗
```bash
sudo nautilus
```

查Ubuntu套件的支援期限
```bash
ubuntu-support-status
```

[連學校VPN](http://ccnet.ntu.edu.tw/vpn/for-ubuntu.html)

## Shell Script
### 註解
```bash
# comment here
```

### 變數
分`shell variable`和`enviroment variable`二種

#### shell variable
變數宣告及使用
```bash
var_name=var_value
echo $var_name
echo "the value of the variable var_name is $var_name"
```

#### enviroment variable
$PATH 告訴系統應用程式所在的位置，$PATH中的每個路徑用`:`分別
$LOGNAME 目前登入者的使用者名稱

### 參數
`$0`：script本身的名稱（含副檔名）  
`$#`：#為數字，表第#個參數。例如：`$1`為第一個參數  