# Git 筆記

列出所有本地分支
```
git branch
```

開新本地分支
```
git branch 新分支名
```
例如要新開一個叫gh-pages的本地分支，指令就下
```
git branch gh-pages
```

刪除本地分支
```
git branch -d 欲刪的分支名
```
例如要刪的是master，指令就下
```
git branch -d master
```

切換（本地）分支
```
git checkout 欲切換過去的分支名
```
例如要切換到gh-pages，指令就下
```
git checkout gh-pages
```

查看目前狀態
```
git status
```