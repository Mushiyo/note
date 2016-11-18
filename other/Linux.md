# Linux筆記
## Ubuntu系
### Ubuntu家族
* [Ubuntu](https://www.ubuntu.com/)
  [Ubuntu 正體中文站](https://www.ubuntu-tw.org/)
* [Kubuntu](https://www.kubuntu.org/)
* [Ubuntu GNOME](https://ubuntugnome.org/)
* [Ubuntu MATE](https://ubuntu-mate.org/)
* [Xubuntu](http://xubuntu.org/)
* [Lubuntu](http://lubuntu.me/)

#### Xubuntu
##### 設定快捷鍵
######以Windows key開啟menu
按左上角圖示→輸入keyboard→選擇keyboard→Application Shortcuts
在選單中找到`xfce4-popup-whiskermenu`，點下面選項的`Edit`
點跳出的對話方塊上的`OK`，接著按其中一顆<kbd>Windows key</kbd>

如果另一個<kbd>Windows key</kbd>也要能彈出視窗的話
則是按下面的`Add`，然後跳出的對話方塊中輸入`xfce4-popup-whiskermenu`後，點`OK`
接著按另一顆<kbd>Windows key</kbd>，這樣二顆<kbd>Windows key</kbd>就都可以彈出menu了

##### 設定其它快捷鍵
按左上角圖示→輸入keyboard→選擇keyboard→Application Shortcuts
按下面的`Add`，然後跳出的對話方塊中輸入欲執行程式的路徑，若有參數要加的話也一起加上去

例如：想要執行的是`/usr/bin/xcalib`，並且要加上`-invert -alter`這二個參數
那麼輸入的就是`/usr/bin/xcalib -invert -alter`

接著點`OK`，然後按下你希望的按鍵組合，這樣就完成了

### 實用軟體
可在軟體中心找到，安裝後不需另外調整的程式
* Synaptic：好用的套裝管理程式
* PCManX：連BBS
* FileZilla：連FTP，另有Windows版
* [Calibre](https://calibre-ebook.com/)：讀epub，另有Windows版
* [GIMP](https://www.gimp.org/)：影像處理，另有Windows版
* [Audacity](http://www.audacityteam.org/)：音訊編輯，另有Windows版

#### xcalib
xcalib可用來改變螢幕色彩，下面指令為色彩反轉
```bash
xcalib -invert -alter
```

#### [gcin](http://hyperrate.com/dir.php?eid=67)
中文輸入法，看作者的網站以看最新的安裝方式
安裝完若無法切換輸入法先重新開機看看

#####龍飛輸入法
算是某種版本的大易，打符號跟在Windows上一樣，比gcin內建的好打
* 作者部落格：http://yawnp0426.blogspot.tw/2014/10/gcin.html
* Ubuntu論壇：https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?topic_id=94930
* gcin論壇：http://hyperrate.com/thread.php?tid=27789

#### [gdeit](https://wiki.gnome.org/Apps/Gedit)
安裝plugin來加功能（如底部commandline……等）
```bash
 sudo apt-get install gedit-plugins
```

color theme載點及安裝：<https://wiki.gnome.org//GtkSourceView/StyleSchemes>
覺得順眼的dark theme：Espresso Libre

#### [HardInfo](https://help.ubuntu.com/community/HardInfo)
顯示系統資訊，以下面指令安裝
```bash
sudo apt-get install hardinfo
```

###疑難雜症
* 按到<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>F3</kbd>，變成全螢幕terminal
  解法：按<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>F7</kbd>回到原本的桌面
* Live CD/USB 跳出要系統帳密
  解法：帳號Ubuntu，密碼空白（若是Xubuntu，則帳號為Xubuntu）

## PuppyLinux
http://puppylinux.org/main/Overview%20and%20Getting%20Started.htm