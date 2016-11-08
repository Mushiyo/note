#自然語言處理筆記

##語料庫|WordNet
* <http://linghub.org/> 搜尋資源
* [中央研究院中英雙語知識本體詞網](http://bow.ling.sinica.edu.tw/)


###中文語料庫
* [國科會數位博物館先導計畫─搜文解字](http://words.sinica.edu.tw/)  
  [中研院語言所「字字珠璣」語庫查詢系統](http://words.sinica.edu.tw/sou/index.html) 搜詞尋字
* [網路展書讀](http://cls.lib.ntu.edu.tw/) [臺大圕介紹](http://speccoll.lib.ntu.edu.tw/node/114)  
  [唐宋入口](http://wen.ling.sinica.edu.tw/wgarden/index.html)
  [中華典籍網路資料中心-唐詩三百首](http://cls.hs.yzu.edu.tw/300/HOME.HT)  
  [中華典籍網路資料中心-宋詞三百首](http://cls.hs.yzu.edu.tw/TZ300/HOME.HTM)  
  [Open Data](http://cls.lib.ntu.edu.tw/OpenData.htm) 李、杜、韓、蘇詩，及六家詞標記資料
* 全唐诗分析系统&全宋词分析系统  
  付費系統，要有訂閱才能用，北京大學所開發 [介紹](http://www.cibtc.com.cn/gtweb/szcb/webpage/tangsong.html) [使用手冊(臺大圕)](http://www.lib.ntu.edu.tw/doc/cs/p_Tang_Sung.pdf) [臺大圕跳轉link](http://drm.lib.ntu.edu.tw/cgi-bin/db/browse.cgi?ccd=Bqt2vJ&o=e0&s=c-1-554)
* 故宮【寒泉】古典文獻全文檢索資料庫 開不起來  
  [台灣師大圖書館【寒泉】古典文獻全文檢索資料庫](http://skqs.lib.ntnu.edu.tw/dragon/) 故宮寒泉的分身？
* [中華語文知識庫](http://chinese-linguipedia.org)
* [簫堯〖藝文〗網界](http://www.xysa.com/)

##工具
* [Google Ngrams](http://storage.googleapis.com/books/ngrams/books/datasetsv2.html)

###中文工具
* [中研院CKIP parser](http://ckipsvr.iis.sinica.edu.tw/) [剖析系統](http://parser.iis.sinica.edu.tw/)  
  [PyCCS (CKIP Chinese Segmentator)](https://github.com/amigcamel/PyCCS) 輔助API，Python  
  [CKIPClient-PHP 中研院斷詞系統客戶端程式](https://github.com/fukuball/CKIPClient-PHP) 輔助API，PHP  
  [CKIP Client](http://ckipclient.sourceforge.net/) 有Java和PHP二種client  
   <http://jackytung8085.blogspot.tw/2013/10/java-ckip-wordsegmentationservice.html> 網友自行實作的Java client
* [Jieba 結巴](https://github.com/fxsjy/jieba) 對岸製，Python [繁體字典](https://github.com/fxsjy/jieba#using-other-dictionaries) [其他語言](https://github.com/fxsjy/jieba#其他语言实现)
  [Jseg](https://github.com/amigcamel/Jseg) 由結巴改成，用中研院語料庫train => 可以繁體 
* 其他 <https://g0v.hackpad.com/aco0Hxp4IEz>

##機器翻譯平台
* [Google Translate](https://translate.google.com.tw)
* [Bing Translator](https://www.bing.com/translator/)
* [Yandex.Translate](https://translate.yandex.com/)
* [百度翻译](http://fanyi.baidu.com/)
* [有道翻译](http://fanyi.youdao.com/)
* [SDL Translate](http://www.freetranslation.com/)

###API
* [Yandex Translate API](https://tech.yandex.com/translate/) [doc](https://tech.yandex.com/translate/doc/dg/concepts/About-docpage/)  
  他人自製的API [Java](https://github.com/rmtheis/yandex-translator-java-api) [PHP](https://github.com/yandex-php/translate-api)
* [Microsoft Translator](https://www.microsoft.com/en-us/translator) [說明](https://msdn.microsoft.com/en-us/library/dd576287.aspx)  
  他人自製的API [Java](https://github.com/boatmeme/microsoft-translator-java-api)
* [百度翻译API](http://api.fanyi.baidu.com/api/trans/product/index) [doc](http://developer.baidu.com/wiki/index.php?title=%E5%B8%AE%E5%8A%A9%E6%96%87%E6%A1%A3%E9%A6%96%E9%A1%B5/%E7%99%BE%E5%BA%A6%E7%BF%BB%E8%AF%91/%E7%BF%BB%E8%AF%91API)
* [有道翻译API](http://fanyi.youdao.com/openapi)

##語音
* [Microsoft Speech Platform](https://msdn.microsoft.com/en-us/library/hh361572.aspx)　有語音辦識及合成
* [（工研院）語音語言互動處理技術網](http://atc.ccl.itri.org.tw/speech/)
  [工研院文字轉語音Web服務](http://tts.itri.org.tw/)

##字詞典
* [百度詞典API]()　支援中英　[doc](http://developer.baidu.com/wiki/index.php?title=%E5%B8%AE%E5%8A%A9%E6%96%87%E6%A1%A3%E9%A6%96%E9%A1%B5/%E7%99%BE%E5%BA%A6%E7%BF%BB%E8%AF%91/%E7%99%BE%E5%BA%A6%E8%AF%8D%E5%85%B8API%E4%BB%8B%E7%BB%8D)

##研究機構|計劃
* [中研院語言所](http://www.ling.sinica.edu.tw/)
* [語言,本體資源與知識開放計劃](http://lopen.linguistics.ntu.edu.tw/)

##其它
* [開放語料庫：製程與分析](https://www.gitbook.com/book/loperntu/copens/details) 一本Gitbook

### 電腦作詩
* [Gnoetry](https://gnoetrydaily.wordpress.com/about/)
* <https://github.com/schollz/poetry-generator>
* <http://www.narrabase.net/poetry_generators.html>
* <https://www.laetusinpraesens.org/docs00s/convert.php>

####按韻
* <http://www.lukeallen.com/rhymer.html>