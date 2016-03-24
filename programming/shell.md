# shell programming暨Linux（指令）筆記

##Linux
檔案權限
owner group other

* other指不在群組中的

資料夾的大小不包括在裡面的東西

## Linux指令
Ctrl + c：強制關閉
Ctrl + d：強制關閉正在執行的程式
Ctrl + l：洗螢幕
Ctrl + f：往下
Ctrl + b：往上，b for back
Ctrl + z：把程式丟到背景
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

[連學校VPN](http://ccnet.ntu.edu.tw/vpn/for-ubuntu.html)
