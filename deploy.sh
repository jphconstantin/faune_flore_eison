#!/bin/sh
set -e
#déploie le contenu de  _site vers github master
#hypothèse: jekyll build a déjà été exécuté
cd _site
rm -rf .git
touch .nojekyll
git init
git add --all :/
#git rm deploy.sh favicon_io_2.zip .gitignore todo.txt --cached
git commit --message  "Version $1"
git remote add origin https://github.com/jphconstantin/faune_flore_eison.git >/dev/null 2>&1
git push --force origin master >/dev/null 2>&1
