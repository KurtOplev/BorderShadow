@echo off

set Work_Directory="%cd%"

set BatchDirectory="D:\Dokumenter\Kurt\.bat Ting\Oprydning Visual Studio\"

set Udfør_Sletning=Ja

set Work_Drev=%Work_Directory:~1,1%

echo Rydder op i Drev: "%Work_Drev%" Directory: %Work_Directory%

echo Udf›r sletning %Udfør_Sletning%

pause

rem @echo on

D:
cd %BatchDirectory%

echo Current directory: "%cd%"

rem @echo off

rem pause

rem echo Dato: %DATE%
rem echo Tid: %TIME%
rem echo Dato/Tid %DATE% %TIME%

set datetimef=%date:~-4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%

rem echo %datetimef%

rem skift eventuelle blanke ud med nul
set datetimef=%datetimef: =0%

rem echo %datetimef%

set Output_Directory=Oprydning_%datetimef%

echo Output directory: "%Output_Directory%"

rem pause

rem @echo on

mkdir %Output_Directory%
cd  %Output_Directory%

set Output_Path=%cd%
rem echo Output_Path: %Output_Path%

rem echo "Testing" > "%Output_Path%\xout.txt"

rem pause

rem @echo on

cd ..

%Work_Drev%:
rem pause

cd %Work_Directory%

rem pause

if %errorlevel% NEQ 0 (goto :ErrorFjern_vs_bin_obj) else (goto Fjern_vs_bin_obj)

:ErrorFjern_vs_bin_obj

echo Directory %Work_Directory% findes ikke

goto :EndFjern_vs_bin_obj

:Fjern_vs_bin_obj

echo Sletter fra directory: "%cd%"

rem pause

rem rd /? 
rem pause 

dir /ad/b/s .vs > "%Output_Path%\xdirmsgvs.txt" 2> "%Output_Path%\xdirerrvs.txt"
rem pause

dir /ad/b/s bin > "%Output_Path%\xdirmsgbin.txt" 2> "%Output_Path%\xdirerrbin.txt"
rem pause

dir /ad/b/s obj > "%Output_Path%\xdirmsgobj.txt" 2> "%Output_Path%\xdirerrobj.txt"
rem pause

dir /ad/b/s packages > "%Output_Path%\xdirmsgpackages.txt" 2> "%Output_Path%\xdirerrpackages.txt"

echo Udf›r sletning %Udfør_Sletning%

pause

@echo on

D:\"Dokumenter\Kurt\.bat Ting\Oprydning Visual Studio\Fjern_vs_bin_obj_cmd.bat " %Udfør_Sletning% > "%Output_Path%\xrdmsg.txt" 2> "%Output_Path%\xrderr.txt"

:EndFjern_vs_bin_obj

echo Tryk en tast
pause

rem @echo off
