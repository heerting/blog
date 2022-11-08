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
# 这个是部署到GitHub上的
git push -f git@github.com:heerting/heerting.github.io.git main

#这个是部署到阿里云服务器上的
# git push -f git@182.92.100.219:/home/www/website/blog.git master
cd -
