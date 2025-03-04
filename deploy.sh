#!/bin/bash

echo -e "Deploying updates to GitHub"

# make public dir to main branch 
cd public
git checkout main
cd ..

# Build 
hugo -t hugo-book

cd public

git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
echo $msg
git commit -m "$msg"

git push origin main 

cd ../

git add .

git commit -m "msg"

git push origin main
