#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn docs:build

# 进入生成的文件夹
cd docs/.vuepress/dist

git init
git add -A
git commit -m 'deploy'
git branch -M main

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# 如果你想要部署到 https://USERNAME.github.io
git push -f git@github.com:heerting/heerting.github.io.git main

cd -
