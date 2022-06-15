1.\
2.\
3.\
    &nbsp;&nbsp;mkdir ./Task1\
    &nbsp;&nbsp;vi ./Task1/README.md\
    &nbsp;&nbsp;git add ./\
    &nbsp;&nbsp;git commit -m 'Created Task1/README.md'\
    &nbsp;&nbsp;git push origin main\
4.\
    &nbsp;&nbsp;git checkout -b dev\
    &nbsp;&nbsp;vi test.txt\
    &nbsp;&nbsp;git add ./\
    &nbsp;&nbsp;git commit -m 'Test file for dev'\
    &nbsp;&nbsp;git push origin dev\
5.\
    &nbsp;&nbsp;git checkout -b shukrullo-new_feature\
6.\
    &nbsp;&nbsp;vi ./README.md\
7.\
    &nbsp;&nbsp;git status\
8.\
    &nbsp;&nbsp;vi ./gitignore\
9.\
    &nbsp;&nbsp;git add ./\
    &nbsp;&nbsp;git commit -m 'Readme and gitignore is added'\
    &nbsp;&nbsp;git push origin shukrullo-new_feature\
10. \
11.\
    &nbsp;&nbsp;git checkout dev\
    &nbsp;&nbsp;git pull origin shukrullo-new_feature\
12.\
    &nbsp;&nbsp;git checkout shukrullo-new_feature\
    &nbsp;&nbsp;git add ./\
    &nbsp;&nbsp;git commit -m 'README.md is updated'\
    &nbsp;&nbsp;git log --oneline\
    &nbsp;&nbsp;git revert b61f2b6 --no-edit\
13.\
    &nbsp;&nbsp;git checkout main\
    &nbsp;&nbsp;vi ./Task1/log.txt\
    &nbsp;&nbsp;git log > ./Task1/log.txt\
14.\
    &nbsp;&nbsp;git branch -D shukrullo-new_feature\
    &nbsp;&nbsp;git push origin --delete shukrullo-new_feature\   

