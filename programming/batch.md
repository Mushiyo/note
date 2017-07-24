# batch暨PowerShell筆記

batch的保留字不分大小寫  

##參數
一共有`%0`~`%9`十個參數可用  
`%0` 即所call的batch file本身的名稱  
`%1` 第一個參數  
`%2` 第二個參數  
：  
：  
以此類推  

例子  
```batch
batfile arg1 arg2 arg3
```
`%0` = batfile  
`%1` = arg1  
`%2` = arg2  
`%3` = arg3  


##輸出
```batch
echo 字串
```
注意"字串"不需用雙引號包，字串可以含空格  

例子  
```batch
echo Hello world!
```
結果
```batch
Hello world!
```


##邏輯判斷
```bat
if 某些邏輯判斷式 (
    do something
) else if (
    do something
) else (
    do something
)
```

例子：測試參數是否為某值  
```batch
if %1 == "try 123" (
	echo bingo!
) else (
	echo failed.
)
```
注意在此例中，若參數中有空格，需用`"`包覆  

## PowerShell
`Get-FileHash`  
官方說明：<https://msdn.microsoft.com/en-us/powershell/reference/5.1/microsoft.powershell.utility/get-filehash>  

使用方式  

```bat
Get-FileHash \Path\to\file
```
會取得檔案的SHA256值  
若需取得其它種hash value，則需以`-Algorithm`參數指定hash function，如  
```bat
Get-FileHash \Path\to\file -Algorithm SHA1
```
會取得檔案的SHA1值  
目前Get-FileHash支援的演算法有
* SHA1
* SHA256
* SHA384
* SHA512
* MACTripleDES
* MD5
* RIPEMD160