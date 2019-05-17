#! /bin/bash
gitbook build &&
git ls-files --modified | xargs git add &&
git commit -m"$1" &&
git push origin &&
# guidelines.cc remote url name
echo "push to guidelines complete."
git push gitee &&
# gitee remote url name
echo "push to gitee complete."