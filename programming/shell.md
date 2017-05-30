# shell programming暨Linux（指令）筆記

##Linux
檔案權限
owner group other

* other指不在群組中的

資料夾的大小不包括在裡面的東西

## Linux指令
<kbd>Ctrl</kbd> + <kbd>c</kbd>：強制關閉  
<kbd>Ctrl</kbd> + <kbd>d</kbd>：強制關閉正在執行的程式  
<kbd>Ctrl</kbd> + <kbd>l</kbd>：洗螢幕  
<kbd>Ctrl</kbd> + <kbd>f</kbd>：往下  
<kbd>Ctrl</kbd> + <kbd>b</kbd>：往上，b for back  
<kbd>Ctrl</kbd> + <kbd>z</kbd>：把程式丟到背景  
jobs：列出在背景中的程式  

### directory
cd -：回前一個目錄  
pwd：顯示當前目錄  
rmdir：刪除沒有檔案的資料夾  
rm -r 資料夾：砍掉資料夾下的所有檔案  

###壓縮、解壓縮
####zip
打包多個檔案
```
zip zipFilename.zip file1 file2 ...
```

打包資料夾
```
zip -r zipFilename.zip directoryName
```

####tar.gz
解壓縮
```
tar zxvf FileName.tar.gz
```

###Ubuntu
以root的身份開視窗
```
sudo nautilus
```
  
查Ubuntu套件的支援期限
```
ubuntu-support-status
```

[連學校VPN](http://ccnet.ntu.edu.tw/vpn/for-ubuntu.html)

## Shell Script
###註解
```shell
# comment here
```

### 變數
變數宣告及使用
```shell
var_name=var_value
echo $var_name
echo "the value of the variable var_name is $var_name"
```

### 參數
`$0`：script本身的名稱（含副檔名）  
`$#`：#為數字，表第#個參數。例如：`$1`為第一個參數  