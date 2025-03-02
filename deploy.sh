#!/bin/bash

echo -e "Deploying updates to GitHub"

# Build 
hugo -t hugo-book

cd public

git add .

msg="rebuilding site `date`"
git commit -m "$msg"

git push origin main 

cd ../

git add .

git commit -m "msg"

git push origin main
