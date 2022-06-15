1.
2.
3.
    mkdir ./Task1
    vi ./Task1/README.md
    git add ./
    git commit -m 'Created Task1/README.md'
    git push origin main
4.
    git checkout -b dev
    vi test.txt
    git add ./
    git commit -m 'Test file for dev'
    git push origin dev
5.
    git checkout -b shukrullo-new_feature
6.
    vi ./README.md
7.
    git status
8.
    vi ./gitignore
9.
    git add ./
    git commit -m 'Readme and gitignore is added'
    git push origin shukrullo-new_feature
10. 
11.
    git checkout dev
    git pull origin shukrullo-new_feature
12.
    git checkout shukrullo-new_feature
    git add ./
    git commit -m 'README.md is updated'
    git log --oneline
    git revert b61f2b6 --no-edit
13.
    git checkout main
    vi ./Task1/log.txt
    git log > ./Task1/log.txt
14.
    git branch -D shukrullo-new_feature
    git push origin --delete shukrullo-new_feature   

