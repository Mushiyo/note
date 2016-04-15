# Git 筆記

列出所有本地分支
```bash
git branch
```

開新本地分支
```bash
git branch 新分支名
```
例如要新開一個叫gh-pages的本地分支，指令就下
```bash
git branch gh-pages
```

刪除本地分支
```bash
git branch -d 欲刪的分支名
```
例如要刪的是master，指令就下
```bash
git branch -d master
```

切換（本地）分支
```bash
git checkout 欲切換過去的分支名
```
例如要切換到gh-pages，指令就下
```bash
git checkout gh-pages
```

查看目前狀態
```bash
git status
```

合併遠端分支到本地分支
```bash
git fetch localTarget remoteSource
git merge localTarget/remoteSource
```