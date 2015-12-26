#Java筆記

[JDK](http://www.oracle.com/technetwork/java/javase/overview/index.html)

## API Specification 
* [Java 8](http://docs.oracle.com/javase/8/docs/api/)  
* [Java 7](http://docs.oracle.com/javase/7/docs/api/)  
* [Java 6](http://docs.oracle.com/javase/6/docs/api/)  

##學習資源
* [The Java™ Tutorials](http://docs.oracle.com/javase/tutorial/) 官方教學文件  
* [Introduction to Java Programming, Eighth Edition](http://cs.armstrong.edu/liang/intro8e/) 學校課本  

##IDE
* [Eclipse](http://www.eclipse.org/) | [下載](http://www.eclipse.org/downloads/)  
* [IntelliJ](https://www.jetbrains.com/idea/) | [下載](https://www.jetbrains.com/idea/download/)  
* [EasyEclipse](http://www.easyeclipse.org/site/home/index.html) | [下載](http://www.easyeclipse.org/site/distributions/index.html) 
* [Yoxos](https://yoxos.eclipsesource.com/)　客製化Eclipse

##處理XML
官方教學：<https://docs.oracle.com/javase/tutorial/jaxp/index.html>

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
底下假設巷`element`為一個Element物件  
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