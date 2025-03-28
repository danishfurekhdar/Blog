@echo off
cd /d "C:\Users\furkh\Documents\MyBlog"

REM Initialize git only if .git doesn't exist
IF NOT EXIST ".git" (
    git init
    git remote add origin https://github.com/danishfurkh/Blog.git
) ELSE (
    echo Git repo already initialized.
)

REM Set main branch just in case
git branch -M main

REM Pull remote content and rebase
git pull --rebase origin main

REM Stage and commit changes
git add .
git commit -m "Upload/update full blog directory"

REM Push to GitHub
git push origin main

pause
