@echo off

title Git One-Click Commit with Formatted Date
echo Current directory: %cd%
echo;

echo Starting to stage files with: git add .
git add .
echo;

set /p declaration=Please enter a commit message:

for /F "tokens=1-4 delims=/- " %%i in ("%date%") do (
    set year=%%k
    set month=%%j
    set day=%%i
)

set FORMATTED_DATE=%year%/%month%/%day%
git commit -m "%FORMATTED_DATE% %declaration%"
echo;

echo Pushing changes to the remote branch: git push origin master
git push -f -u origin master
echo;

echo Execution complete
echo;

pause
