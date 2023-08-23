#!/bin/bash

echo ''
echo '######################################'
echo '''
   _____ _ _       _____ _                  
  / ____(_) |     / ____| |                 
 | |  __ _| |_   | |    | | ___  _ __   ___ 
 | | |_ | | __|  | |    | |/ _ \|  _ \ / _ \
 | |__| | | |_   | |____| | (_) | | | |  __/
  \_____|_|\__|   \_____|_|\___/|_| |_|\___|
                                          
'''
echo ''
echo '#####################################'

read -rp 'Repository SSH link (git@github.com:gabflag/teste.git): ' REPO_URL
REPO_NAME=$(basename "$REPO_URL" | sed 's/\.git$//')

git clone "$REPO_URL"
cd "$REPO_NAME"

git pull origin main

echo "" >> README.md
git add .
git commit -m "Synchronized in local environment successfully"
git push origin main
echo ''
echo '=>Ok! Synchronized in local environment successfully'
echo ''
