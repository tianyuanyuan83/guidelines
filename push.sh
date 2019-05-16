#! /bin/bash
dt="date +%m%d-%T"
./syncpac.sh &&
gitbook build &&
cd _book &&
echo "*.sh" > .gitignore &&
git add . &&
git commit -m"update at $dt" &&
git push