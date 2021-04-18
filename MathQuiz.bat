@echo off
set questionnumber=0
echo Which type of math do you want to do?
echo Addition
echo Subtraction
echo Multiplication
echo Division
set /p typeanswer=
if %typeanswer% == Addition goto addition
if %typeanswer% == Subtraction goto subtraction
if %typeanswer% == Multiplication goto multiplication
if %typeanswer% == Division goto division
:addition
set type=+
goto question
:subtraction
set type=-
goto question
:multiplication
set type=*
goto question
:division
set type=/
goto question
:question
cls
set question=%random%%type%%random%
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
