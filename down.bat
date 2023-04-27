@echo off

title Git One-Click Commit 
echo Current directory: %cd%
echo;

echo Executing git fetch origin master
git fetch origin master
echo;

echo Executing git merge origin/master
git merge origin/master
echo;

echo Merge successful
echo;

pause
