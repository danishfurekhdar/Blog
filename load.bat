@echo off
REM Change to your local blog directory
cd /d "C:\Users\furkh\Documents\MyBlog"

REM Initialize Git (only runs if not already a repo)
git init

REM Add remote origin (skip if already set, or change to 'set-url' if needed)
git remote add origin https://github.com/danishfurkh/Blog.git

REM Add all files
git add .

REM Commit changes
git commit -m "Initial commit: upload full blog directory"

REM Set main branch
git branch -M main

REM Push to GitHub
git push -u origin main

pause
