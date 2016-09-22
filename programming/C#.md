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

##method
method由method body及method signature所組成  
method body: 實做程式碼  
method signature: access modifier, method return type, the method name and parameters  

access modifier有以下幾種
* private: 只在其所屬的class內可用
* public: 不論是誰都可用
* protected
* internal
* static

例子
```c#
accessModifier methodType methodName(paraType1 para1, paraType2 para2 ...)
{
   // do something
}
```

`ref`關鍵字：

Overloading：name相同，但signature不同  
optional parameter 
named parameter

##陣列
###一維陣列
* index由0開始
* 宣告及使用都會Java類似
* 跟Java一樣，用new的方式宣告出的陣列會有default value

例子  
```c#
int[] anIntArray = new int[SIZE];
int[] anotherIntArray = {0, 1, 1, 2, 3, 5, 8};
int num = anotherIntArray[3]; // num will be 2
int len = anotherIntArray.Lenght; // len will be 7
```

###多維陣列
* 陣列的維度最多可到32維

```c#
int[ , ] twoDArray = new int[SIZE1, SIZE2]; // a 2D array with SIZE1 * SIZE2 cells
int num = twoDArray[0, 0];
```

###Jagged array

##enum

##struct
可用的access modifier
* public
* internal
* private

`this`關鍵字 

###get/set

##class


##例外處理
類似Java
```c#
try {
    // try somtehing
} catch (Exception someException) {
    // catch something
} finally {
    // 不論前面的try/catch發生什麼，都一定會跑到這裡
}

```

#附錄
##IDE
* [Visual Studio](https://www.visualstudio.com/en-us/downloads/download-visual-studio-vs.aspx) MS自家產品，不過只能在Windows上使用
* [MonoDevelop](http://www.monodevelop.com/) Linux, Windows及Mac都可用，但要注意編譯時可能會抓不到某些東西（例如一些`System.Windows.*`系列的東西）
* [Xamarin](http://xamarin.com/platform)
