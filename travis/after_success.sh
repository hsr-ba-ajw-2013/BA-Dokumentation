#!/bin/sh

echo '######################################'
echo '#            AFTER SUCCESS           #'
echo '#              - START -             #'
echo '######################################'

echo '---- Cloning repo into /tmp ----'
cd /tmp
git clone https://${GH_OAUTH_TOKEN}@github.com/${GH_USER_NAME}/${GH_PROJECT_NAME} gh-pages 2>&1
cd gh-pages

echo '---- Switch to gh-pages branch ----'
git checkout gh-pages

echo '---- Copy latest PDF build ----'
cp $RESULT_PDF_PATH ./

echo '---- Set git settings ----'
git config --global user.name $GIT_AUTHOR_NAME
git config --global user.email $GIT_AUTHOR_EMAIL
git config --global push.default matching

echo '---- Add files, commit and push ----'
git add -A
git commit -m "adding latest build pdf to gh-pages"
git push https://${GH_OAUTH_TOKEN}@github.com/${GH_USER_NAME}/${GH_PROJECT_NAME} 2>&1

echo '######################################'
echo '#            AFTER SUCCESS           #'
echo '#            - FINISHED -            #'
echo '######################################'