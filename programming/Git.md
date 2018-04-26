# Git 筆記

官方網站：<https://git-scm.com/>

## 指令
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

合併遠端分支到本地分支
```bash
git fetch remoteName remoteBranch
git merge remoteName/remoteBranch
```

查看目前狀態
```bash
git status
```

把所有更動的檔案（限內容增刪和新增檔案）加進下次的commit
```bash
git add .
```

把所有刪除的檔案加進下次的commit
```bash
git add -A
# or git add -all
```

移掉所有加進下次commit的檔案
```bash
git reset
```

移掉某個加進下次commit的檔案
```bash
git resest pathToFile/filename
```

與前一版比較／查看修改更動的地方
對repo中的所有檔案
```bash
git diff
```

對特定檔案
```bash
git diff pathToFile/filename
```

若已經git add了
```
git diff --cached
```

比較`HEAD`和`HEAD`的前一次commit（`HEAD^`）
```
git diff HEAD^ HEAD
```

查看過去的commit message
```
git log
```
按<kbd>q</kbd>離開

## 安裝
### Linux
#### Debian系
```bash
apt-get install git
```
