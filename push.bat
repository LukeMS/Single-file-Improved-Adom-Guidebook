@ECHO OFF

git add .
set /p STRING="Enter commit description: "

REM Set "string" variable to "first" command line parameter

REM Remove Quotes [Only Remove Quotes if NOT Null]
IF DEFINED STRING SET STRING=%STRING:"=%

REM IF %1 [or String] is NULL GOTO Exit
IF NOT DEFINED STRING GOTO Exit

GOTO Commit

:Commit
git commit -m %STRING%
git push -u origin gh-pages
pause

:Exit
@echo "Null input, aborting."
@pause
@exit



