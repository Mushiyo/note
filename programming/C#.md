# C#筆記

* case-sensitive

#基本語法
##註解
```c#
//單行註解
```

##資料型態
分為二種
1. value type: 如int、long、float、double、decimal、char、bool、DateTime、string

2. reference type: class

##identifier
指namespace、class、method、variable等的名稱
只能含字母、數字及底線

##運算子

算術運算子 | +, -, *, /, %, ++, --
比較運算子 | ==, !=, <, >, <=, >=, is
字串串接 | +
邏輯運算子 | &, |, ^, !, ~, &&, ||
賦值運算子 | =, +=, -=, *=, /=, %=, &=, |=, ^=, <<=, >>=, ??
位元運算子 | <<, >>

##條件判斷式
###if/else
```c#
if (some bool value) {
    // do something
} else if (some bool value) {
    // do something
} else {
    // do something
}
```

###switch case
```c#
switch (variable) {
   case 0:
      // do something
      break;
   case 1:
      // do something
      break;
   case 2:
      // do something
      break;
   default:
      // do something
      break;
}
```

* 注意：`variable`的型態可以是：sbyte, byte, short, ushort, int, uint, long, ulong, char, string, enumerations
因此case的部份也是配合`variable`來調整


##迴圈
###for
類似Java
```c#
for (int i = 0; i < 10; i++){
    // do something
}
```

###for each
類似Java
```c#
foreach (type element in array){
    // do something
}
```
type與array的型態一致

###while
類似Java
```c#
while (bool value){
    // do something
}
```

###do/while
類似Java
```c#
do {
    // do something
} while (bool value);
```


#附錄
##IDE
* [Visual Studio](https://www.visualstudio.com/en-us/downloads/download-visual-studio-vs.aspx) MS自家產品，不過只能在Windows上使用
* [MonoDevelop](http://www.monodevelop.com/) Linux, Windows及Mac都可用，但要注意編譯時可能會抓不到某些東西（例如一些`System.Windows.*`系列的東西）
* [Xamarin](http://xamarin.com/platform)
