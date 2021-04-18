@echo off
set questionnumber=0
:question
cls
set question=%random%+%random%
set /a questionnumber=%questionnumber%+1
set /a answer2=%question%
echo Question %questionnumber%
echo %question%
set /p answer=
if %answer% == %answer2% goto question
if not %answer% == %answer2% goto gameover
:gameover
cls
echo Game Over
echo Score:%questionnumber%
pause
exit
