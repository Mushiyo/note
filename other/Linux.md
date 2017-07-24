# Linux筆記
## Debian系
### Ubuntu家族
* [Ubuntu](https://www.ubuntu.com/)
  [Ubuntu 正體中文站](https://www.ubuntu-tw.org/)
* [Kubuntu](https://www.kubuntu.org/)
* [Ubuntu GNOME](https://ubuntugnome.org/)
* [Ubuntu MATE](https://ubuntu-mate.org/)
* [Xubuntu](http://xubuntu.org/)
* [Lubuntu](http://lubuntu.me/)

#### Ubuntu
##### 系統需求
###### 16.04
建議需求（取自下載頁）
處理器：2 GHz dual core processor or better
RAM：2 GB system memory
硬碟空間：25 GB of free hard drive space

#### Xubuntu
##### 設定快捷鍵
###### 以Windows key開啟menu
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

#### Lubuntu
##### 缷載裝置 (unmount device)
打開檔案管理員，按下裝置右側的圖案即可  
注意按右鍵的選單中無法unmount  

#### 實用軟體
可在軟體中心找到，安裝後不需另外調整的程式
* Synaptic：好用的套裝管理程式
* PCManX：連BBS，如果預設的字型使版面看起來很悲劇可改成`AR PL UMing TW`或`AR PL UKai TW`
* FileZilla：連FTP，另有Windows版
* [Calibre](https://calibre-ebook.com/)：讀epub，另有Windows版
* [GIMP](https://www.gimp.org/)：影像處理，另有Windows版
* [Audacity](http://www.audacityteam.org/)：音訊編輯，另有Windows版
* [KNotes](https://www.kde.org/applications/utilities/knotes/)：便利貼，因為是KDE軟體，所以可能有無法輸入中文的情形冏冏
* [kdenlive](https://kdenlive.org)：影片編輯軟體

##### xcalib
xcalib可用來改變螢幕色彩，下面指令為色彩反轉
```bash
xcalib -invert -alter
```

##### [gcin](http://hyperrate.com/dir.php?eid=67)
中文輸入法，看作者的網站以看最新的安裝方式
安裝完若無法切換輸入法先重新開機看看

##### 龍飛輸入法
算是某種版本的大易，打符號跟在Windows上一樣，比gcin內建的好打
* 作者部落格：http://yawnp0426.blogspot.tw/2014/10/gcin.html
* Ubuntu論壇：https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?topic_id=94930
* gcin論壇：http://hyperrate.com/thread.php?tid=27789

##### [Gedit](https://wiki.gnome.org/Apps/Gedit)
安裝plugin來加功能（如底部commandline……等）
```bash
 sudo apt-get install gedit-plugins
```

color theme載點及安裝：<https://wiki.gnome.org/Projects/GtkSourceView/StyleSchemes>
覺得順眼的dark theme：Espresso Libre

##### [Kate](https://kate-editor.org/)
Kate使用手冊：<https://docs.kde.org/stable5/en/applications/kate/>  
類似gedit的文字編輯器，但color theme不好找，可能要自定  

自定color theme的方式：設定 > 設定Kate > editor component > 字形與顏色，即可開始進行自定
若要匯入color theme，則在進行完上述步驟後，按`匯入`，接著在檔案瀏覽器內找到現有的`.kateschema`檔
如果檔案瀏覽器內找不到`kateschema`檔，則可以把副檔名改成`kateschema|Kate`試試

##### [Typora]([https://typora.io/)
WYSIWYG的markdown編輯軟體，可顯示TOC及數學

##### [HardInfo](https://help.ubuntu.com/community/HardInfo)
顯示系統資訊，以下面指令安裝
```bash
sudo apt-get install hardinfo
```

#### 疑難雜症
* 按到<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>F3</kbd>，變成全螢幕terminal
  解法：按<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>F7</kbd>回到原本的桌面
* Live CD/USB 跳出要系統帳密
  解法：帳號Ubuntu，密碼空白（若是Xubuntu，則帳號為Xubuntu；Lubuntu則為lubuntu，注意開頭是小寫）
* 播YouTube時，遇到不支援H.264及MSE & H.264 （可用YouTube[內建的頁面](https://www.youtube.com/html5)測）
  解法：安裝[RestrictedFormats](https://help.ubuntu.com/community/RestrictedFormats)

##### Kubuntu
* (16.04 only?)軟體中心怎麼按都只找到0 item
  解法：似乎是bug，更新後即可。[參考](https://askubuntu.com/questions/761824/kubuntu-16-04-software-centre-search-bug)

## 小型／輕量Linux
* [Puppy Linux](http://puppylinux.org)
* [Slax Linux](https://www.slax.org/)
* http://www.damnsmalllinux.org/
* http://www.vectorlinux.com/
* http://www.tinycorelinux.net/
* http://unity-linux.org/
* http://www.slitaz.org/en/get/

## 桌面
### Xfce
官網：<https://xfce.org/>

在Ubuntu有以上二種方式安裝
```bash
sudo apt-get install xfce4 # 1. 最少元件安裝
sudo apt-get install xubuntu-desktop # 2. 完整應用程式安裝，可以想成當前的系統跟Xubuntu取聯集
```

xfce有`xfce4-popup-applicationsmenu`和`xfce4-popup-whiskermenu`二種選單  
[whisker menu](https://gottcode.org/xfce4-whiskermenu-plugin/)的設計較為現代，可以直接打字搜尋選單中的項目；applications menu就只能自己慢慢選  
若是安裝`xfce4`而不是`xubuntu-desktop`的話，可能會沒裝到whisker menu，要自己用
```bash
sudo apt install xfce4-whiskermenu-plugin
```
來安裝

#### 外觀
字太小：左上角選單→設定值→外觀→字型，調字體大小或DPI
底部面板(panel)佔空間：對面板按右鍵→面板→面板偏好設定→在Automatically hide the panel選`Intelligently`
移除不必要的預設桌面圖示：對面板按右鍵→桌面設定→圖示→調整視窗大小直到能看到「預設圖示」和其下的選項，依個人需求勾選或取消勾選

#### 小工具
剩餘電量：[xfce4-battery-plugin](http://goodies.xfce.org/projects/panel-plugins/xfce4-battery-plugin)
便利貼：[xfce4-notes-plugin](http://goodies.xfce.org/projects/panel-plugins/xfce4-notes-plugin)
計時器：[xfce4-timer-plugin](http://goodies.xfce.org/projects/panel-plugins/xfce4-timer-plugin)
強迫鎖螢幕休息計時器：[xfce4-time-out-plugin](http://goodies.xfce.org/projects/panel-plugins/xfce4-time-out-plugin)

#### 快捷鍵
按左上角選單→設定值→鍵盤→應用程式捷徑    
接著依需求分別照以下說明設定  

##### 以Windows key開啟選單
在選單中找到`xfce4-popup-applicationsmenu`，點下面選項的`編輯`  
點跳出的對話方塊上的`確定`，接著按其中一顆<kbd>Windows key</kbd>  

如果另一個<kbd>Windows key</kbd>也要能彈出視窗的話
則是按下面的`加入`，然後跳出的對話方塊中輸入`xfce4-popup-applicationsmenu`後，點`確定`
接著按另一顆<kbd>Windows key</kbd>，這樣二顆<kbd>Windows key</kbd>就都可以彈出選單了

##### <kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd>開啟terminal
按下面的`加入`，然後跳出的對話方塊中輸入`gnome-terminal`（假設原本是Unity桌面），點`確定`
接著按<kbd>Ctrl</kbd> + <kbd>Alt</kbd> + <kbd>T</kbd>即可

### LXDE

官網：<http://lxde.org/>  

在Ubuntu有以下三種安裝方式  

```bash
sudo apt-get install lxde-core # 1. 最少元件安裝
sudo apt-get install lxde # 2. 含少部份應用程式安裝
sudo apt-get install lubuntu-desktop # 3. 完整應用程式安裝，可以想成當前的系統跟Lubuntu取聯集
```

若原本的桌面是Unity，安裝完LXDE後並沒有出現在選單中，可下以下指令再進選單看看
```bash
sudo apt-get install lxsession lxsession-logout
```

若原本的桌面是KDE，進到LXDE後無法登出，則
```bash
sudo apt-get install lxsession-logout
```

#### 設定快捷鍵
編輯`~/.config/openbox/lxde-rc.xml`  
在`<keyboard>`標籤之間依需求修改以下內容  

設定<kbd>Windows</kbd>開啟選單，加入
```xml
<keybind key="Super_L">
  <action name="Execute">
    <command>lxpanelctl menu</command>
  </action>
</keybind>
```

參考資料：<http://xahlee.info/linux/linux_lxde_add_key_shortcuts.html>

### KDE
先照[這裡](https://community.kde.org/Kubuntu/PPAs)加KDE的PPAs  
接著  
```bash
sudo apt-get install plasma-desktop # 可能是最少元件安裝？
# sudo apt-get install kde-plasma-desktop 在16.04試了沒用
```
參考資料：
1. <https://help.ubuntu.com/community/InstallingKDE>
2. 在14.04下不同的package name及安裝的套件數量：<https://ubuntuforums.org/showthread.php?t=2239653>
