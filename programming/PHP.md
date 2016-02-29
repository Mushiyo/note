#PHP筆記

#基本語法
* PHP的程式碼要放在
```
<?php
     
?>
```
之中

* 跟Java一樣，以`;`來斷句
* 可被放入HTML之中
* 檔名以`.php`結尾，就算置於HTML之中也一樣，因為這樣才會執行PHP程式碼的部份。

##I/O
###standard output
```php
echo "Hello World!";
```

##運算子
###算術運算子

###邏輯運算子
```php
> // 大於
>= // 大於等於
< // 小於
<= // 小於等於
== // 等於
!= // 不等於
```

###boolean operator
```php
|| // or
```

##變數
###變數宣告
* 變數名稱以`$`開頭，且為case-sensitive
* 以`=`賦值

例子：
```php
$var = "something"; // a string variable
$num = 0.01; // a number variable
$condition = true; // a boolean variable
echo $num; // output a variable
```

##註解
```php
//這是註解
```

##條件判斷式
### if/else
```php
if($booleanVal){
    // do something
} elseif ($booleanVal2){
    // do something
} else{
    // do something
}
```

###switch case
####style 1
類似Java的switch

```php
switch ($val) {
    case 0:
        // do something
        break;
    case 1:
        // do something
        break;
    default:
        // do something
}
```

####style 2
```php
switch ($val):
	case 0:
        // do something
        break;
    case 1:
        // do something
        break;
    default:
        // do something
endswitch;
```

##字串
* 字串以`""`包覆
* 串接運算子為`.`，例如`"Hello" . "World"`的結果等同於"HelloWorld"