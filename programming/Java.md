#Java筆記

[JDK](http://www.oracle.com/technetwork/java/javase/overview/index.html)

## API Specification 
* [Java 8](http://docs.oracle.com/javase/8/docs/api/)  
* [Java 7](http://docs.oracle.com/javase/7/docs/api/)  
* [Java 6](http://docs.oracle.com/javase/6/docs/api/)  

### Java EE
* [Java EE 8](http://docs.oracle.com/javaee/8/api/)
* [Java EE 7](http://docs.oracle.com/javaee/7/api/)
* [Java EE 6](http://docs.oracle.com/javaee/6/api/)

##學習資源
* [The Java™ Tutorials](http://docs.oracle.com/javase/tutorial/) 官方教學文件  
* [Introduction to Java Programming, Eighth Edition](http://cs.armstrong.edu/liang/intro8e/) 學校課本  

##IDE
* [IntelliJ](https://www.jetbrains.com/idea/) | [下載](https://www.jetbrains.com/idea/download/)  
* [EasyEclipse](http://www.easyeclipse.org/site/home/index.html) | [下載](http://www.easyeclipse.org/site/distributions/index.html) 
* [Yoxos](https://yoxos.eclipsesource.com/)　客製化Eclipse

### [Eclipse](http://www.eclipse.org/)
[載點](http://www.eclipse.org/downloads/)
  
Eclipse開workspace後，記得把檔案編碼設為UTF-8，這樣比較不會出錯  
以for Java EE的版本來說，要設的地方共有以下幾個  
1. General > Workspace > Text file encoding
2. Web > CSS files > Encoding
       > HTML files > Encoding
	   > JSP files > Encoding
3. XML > XML files > Encoding

##語法
###例外處理
```Java
try{
    // code that will throw exception(s)
} catch (SomeException e1){
    // code for handle exceptions which is an instance of class SomeException
} catch (AnotherException e2){
    // code for handle exceptions which is an instance of class AnotherException
}
```

* 可以有多個catch，每個catche處理不同類型(class)的例外

自**1.7**後，用`|`把例外的class name串起來，就可以用同一個catch block處理多種例外
```Java
catch (Exception1 | Exception2 ex){
    // code for handle exceptions which is either an instance of class Exception1 or Exception2
    // (hence the xor `|` symbol)
}
```
詳細參考：<http://docs.oracle.com/javase/7/docs/technotes/guides/language/catch-multiple.html#multiple>

##寫網頁
[Tomcat](http://tomcat.apache.org/) 

###取得本地資料
```Java
//在servelet的method內部
Scanner in = new Scanner(getServletContext().getResourceAsStream("path/file"););
```
注意檔案要置於`WebContent`資料夾下，若要限制只能為servlet所用，則置於`WebContent/WEB-INF`下

###Azure
####Git deploy
#####容器為Tomcat
若使用Eclipse的Dynamic Web Project
則開project時，`content directory`要設為`webapps/ROOT`
source的`output folder`要設為`webapps/ROOT/WEB-INF/classes` 
參考：http://stackoverflow.com/questions/33951613/azure-tomcat-eclipse-deployment

##處理JSON
JSON官方source code及documentation：<http://www.json.org/java/index.html>

##處理XML
Java官方教學：<https://docs.oracle.com/javase/tutorial/jaxp/index.html>

###用DOM的方式parse
相關package
```Java
import javax.xml.datatype.DatatypeFactory;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
```

準備parse XML
```Java
DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();

// 取得XML檔的DOM 
Document dom = db.parse("filename.xml");

// 取得root
Element root = dom.getDocumentElement();
```

Node、Element、NodeList
* Node跟Element都是interface，一個Element也是一個Node（即，Node是Element的Superinterfaces）
底下假設`element`為一個Element物件  

```Java
//取得所有位在element底下，標籤名稱是tagName（在檔案中就是<tagName>）的node
NodeList entries = element.getElementsByTagName("tagName");

//取得element的children
NodeList entryChild = element.getChildNodes();

//取得element的內容（即<tagName></tagName>之間的東西）
String text = element.getTextContent();

//取得element的名稱（即在<>之中的名稱）
String nodeName = element.getNodeName();

//以attribute的名稱來取得attribute的值
//這個method要Element才有，如果是從NodeList中抽出來會是Node，要先強制轉型成Element
String attrVal = element.getAttribute("attrName");
```

##util
###PriorityQueue
預設是min heap，若想用max heap，在1.8之前只能用以下的constructor
```
// http://docs.oracle.com/javase/8/docs/api/java/util/PriorityQueue.html#PriorityQueue-int-java.util.Comparator-
public PriorityQueue(int initialCapacity, Comparator<? super E> comparator)
```
1.8之後則可以只指定comparator
```
// http://docs.oracle.com/javase/8/docs/api/java/util/PriorityQueue.html#PriorityQueue-java.util.Comparator-
public PriorityQueue(Comparator<? super E> comparator)
```

範例  
```
PriorityQueue<Integer> pq1 = new PriorityQueue<Integer>(10, Collections.reverseOrder());
PriorityQueue<Integer> pq2 = new PriorityQueue<Integer>(Collections.reverseOrder());
```
