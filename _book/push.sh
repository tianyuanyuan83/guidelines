#! /bin/bash
gitbook build
git ls-files  --modified --others --exclude=node_modules/  --exclude=.DS_Store | xargs git add
git commit -m"$1"
git push aliyun
echo "push to aliyun complete."
git push gitee
echo "push to gitee complete."
git push coding
echo "push to coding complete."