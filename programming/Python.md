#Python 筆記

##documentation
* [Python 2](https://docs.python.org/2/)  
* [Python 3](https://docs.python.org/3/)  

##學習資源
* [Python for Informatics: Exploring Information](http://www.pythonlearn.com/book.php) Coursera "Programming for Everybody"課本

##套件
* [NumPy & SciPy](http://www.scipy.org/) | [documentation](http://docs.scipy.org/doc/)  
* [matplotlib](http://matplotlib.org/) | [documentation](http://matplotlib.org/contents.html)
* [vPython](http://vpython.org/index.html) | [documentation](http://vpython.org/contents/doc.html)  
* [Python Imaging Library (PIL)](http://www.pythonware.com/products/pil/) | [The Python Imaging Library Handbook](http://effbot.org/imagingbook/)  

-----

# 基本語法

##Hello World!
```python
print "Hello World!"
```
Python是靠換行來斷句的，而print的效果就是Java的println

##變數形態及宣告
```python
aInt = 7
aFloat = 1.23
abool = True
```
Python只要宣告變數名稱，不用宣告形態，它會自己根據變數的值來判斷形態為何
注意變數名稱是case sensitive

###取得形態
```python
type(varName)
```

##註解
```python
#單行註解

"""
多
行
註
解
"""
```

##運算子
###算數運算子
```python
addition = 1 + 2
subtraction = 3 - 4
multiplication = 5 * 6
division = 7 / 8
power = 9**10 # power will be 9^10
mod = 11 % 12
```
除了平常常見的運算子外，Python還有指數運算
另外值得一提的是，所有運算子都支援大數運算

###邏輯運算子
```python
== #等於
!= #不等於
<  #小於
<= #小於等於
>  #大於
>= #大於等於
is #形態和值皆相等，比==強
```

###boolean operator
```python
and
or
not
```
優先序由高至低：not > and > or
bool的優先序低於算術運算子

##條件判斷式
```python
if 8 > 9:
    print "I don't get printed!"
elif 8 < 9:
    print "I get printed!"
else:
    print "I also don't get printed!"
```

##迴圈
indefinite loop: while loop的別稱，loop會持續進行直到條件為false  
definite loop: 確定會執行某個特定次數的loop  

###while迴圈
```python
n = 10
while n > 0 :
    print n
    n -= 1
```

###for迴圈
類似Java的for each的用法
```python
people = ['Alice', 'Bob', 'Carol', 'Dave']
for person in people:
    print 'Hello,', person
```

##break & continue
```python
n = 0
while true :
    if n >= 10:
        break
    if n % 2 == 0:
        continue
    else:
        print n
```

##吃輸入
```python
var = raw_input("提示訊息")
```

##函數宣告
```python
def spam():
    eggs = 12
    return eggs
```
Python是靠縮排來判斷scope的
跟宣告變數一樣，宣告function也不用宣告形態

```python
def func(para1, para2, ..., paran):
	return
```
因為func沒有型態，所以若有多個return的話，其return的值可以相異

```python
import modulo
modulo.func()	

from module import function
from module import *
```

##例外處理

```Python
try:
    # 可能會出錯的code
    num_str = int(str)
    print "successed! str is a numeric string"
except:
    print "failed! str is not a numeric string"
    num_str = -1
```

"fruitful" function 有回傳值的function
"not fruitful" function 沒回傳值的function，也就是void function