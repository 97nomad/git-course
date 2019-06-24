# Git

## Начальная настройка

  * `git config --global user.name "Your Name"` - имя, отображаемое в коммитах
  * `git config --global user.email "email@example.com"` - email, отображаемый в коммитах
  * `git config --global core.autocrlf true` - автоматическое преобразование CRFL (windows only)
  
## Status

  * `git status` `(M-x magit-status)` - окно статуса репозитория

## Checkout
  Перемещение между ветками, коммитами etc
  
  * `git checkout branch-name` `(b b branch-name RET)` - перейти на другую ветку
  * `git checkout 0.1.0-b1` `(b b 0.1.0-b1 RET)` - перейти на другой тег
  * `git checkout HEAD^1` `(b b HEAD^1 RET)` - перейти на один коммит назад
  * `git checkout -b feature/new-feature` `(b c feature/new-feature RET RET)` - создать новую ветку и перейти на неё

## Stage
  Сюда попадает код перед коммитом

  * `git add file1.txt` `(s)` - добавить файл в stage
  * `git reset HEAD file1.txt` `(u)` - убрать файл из stage
  * `git rm file1.txt` `(k)` - удалить файл отовсюду

## Commit
  Фиксация изменений
  
  * `git commit` `(c c)` - создать коммит 
  * `git commit -m "Commit message"` - создать коммит с сообщением
  * `git commit -a` `(c -a c)` - положить в stage все изменения и создать коммит (так делать не надо)
  * `git commit --amend` `(c a)` - дополнить последний коммит (только для ещё не запушенных)

## Stash
  Маленькая уютная свалка изменений
  
  * `git stash` `(z z RET)` - добавить изменения в стеш
  * `git stash apply` `(z a RET)` - применить изменения из стеша
  * `git stash pop` `(z p RET)` - достать изменения из стеша и удалить его
  * `git stash list` - список существуеющих стешей
  * `git stash apply 1` - применить стеш с id 1

## Pull
  Вытаскивание данных из удалённого репозитория
  
  * `git pull` - спуллить все новые коммиты
  * `git pull origin master` `(F p)` - спуллить все новые коммиты в ветке master
  * `git pull --rebase origin master` - спуллить все новые коммиты в ветке master с ребейзом локальных

## Cherry pick
  Перенос отдельного коммита в текущую ветку
  
  * `git cherry-pick aa0e1cf` `(A A)` - черри-пик коммита aa0e1cf
  * `git cherry-pick --no-commit aa0e1cf` `(A a)` - применить изменения без создания нового коммита

## Merge
  Склеивание двух веток
  
  * `git merge master` `(m m)` - вмержить ветку master в текущую ветку
  * `git merge master -m "Merge master into this"` `(m e)` - вмержить master в текущую ветку с кастомным описанием

  * `git merge --abort` - Отменить попытку мерджа с конфликтом
  * `git merge --continue` - Завершить мердж после исправления конфликтов
