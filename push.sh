#! /bin/bash
git ls-files  --modified --others | xargs git add
git commit -m"$1"
git push aliyun
echo "push to aliyun complete."
git push gitee
echo "push to gitee complete."
git push gitlab
echo "push to gitlab complete."