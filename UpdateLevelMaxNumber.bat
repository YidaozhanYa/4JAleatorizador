@echo off
color f0
setlocal enabledelayedexpansion
cd "%~dp0"

set /p max=<cfg/maxnumber.cfg

:lang
chcp 936>nul 2>nul||goto lang2
mode con cols=50 lines=15
set msgtitle=SM4J - ��������� v3 - ���߸���
set msg01=      ----SM4J - ��������� v3 - ���߸���----
set msg02=            By Bilibili ��һ��ն��
set msg03=      ������������������ؿ�������
set msg04=      ��ȷ������������
set msg045=      ������Ҫ���ѽϳ�ʱ�䡣
set msg05=      Ŀǰ���ؼ�¼�Ĺؿ��������Ϊ%max%����
set msg06=���Թؿ�
set msg07=����
set msg08=�Ҳ����ؿ�
set msg09=��ȡ�ٽ���ֵ���ԡ�
set msg10=���������
set msg11=      ���߸��¹ؿ����ֵ��ϣ�Ϊ
set msg12=      �밴��������˳�...
set syntax=��
goto start

:lang2
chcp 437>nul 2>nul||goto lang3
mode con cols=70 lines=15
set msgtitle=SM4J - World Randomizer V3 - Level Max Number Update
set msg01=      ----SM4J - World Randomizer V3 - Level Max Number Update----
set msg02=            By Yidaozhan_Ya
set msg03=      Press any key to update the max number of levels.
set msg04=      Please make sure to be online��
set msg045=      It may take a long time.
set msg05=      Currently, max number of levels recorded locally is %max%.
set msg06=Testing level 
set msg07=Error.
set msg08=Couldn't find the level 
set msg09=, try again with a nearby value.
set msg10=Number of errors:
set msg11=      Max level number update completed, it is 
set msg12=      Press any key to exit.
set syntax=.
goto start

:lang3
mode con cols=75 lines=15
set msgtitle=Actualizacion sobre el niveles numero maximo de SM4J Aleatorizador mundial
set msg01=     ----Actualizacion sobre el numero maximo de niveles----
set msg02=          Por Yidaozhan_Ya
set msg03= Presione cualquier tecla para actualizar el numero maximo de niveles.
set msg04= Asegurate de estar en linea��
set msg045= Puede llevar mucho tiempo.
set msg05= Actualmente, el numero maximo de niveles registrados localmente es %max%.
set msg06=Nivel de prueba 
set msg07=Error.
set msg08=No puedo encontrar el nivel 
set msg09=, int��ntelo de nuevo con un valor cercano.
set msg10=Numero de errores:
set msg11= Actualizacion del numero de nivel maximo completada, es 
set msg12= presiona cualquier tecla para salir.
set syntax=.
goto start

:start
del "%~dp0tmp.html"
del "%~dp0file.php@id=*"
cls
title %msgtitle%
echo.&echo.%msg01%
echo.%msg02%
echo.&echo.%msg03%
echo.%msg04%
echo.%msg045%
echo.          
if exist cfg\maxnumber.cfg echo.%msg05%
pause>nul
cls
set levelid=10000
set counter=0
set mod=100
set loop2=0

:loop
set /a levelid=!levelid!+!random!%%!mod!+1
if "%lmod2%"=="1" set /a levelid=%levelid%-500
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
echo.%msg06%%levelid%%syntax%
ren "%~dp0file.php@id=%levelid%" tmp.html
for /f "tokens=1,* delims=:-" %%a in ('findstr /n .* tmp.html') do (
   if "%%a"=="6" echo %%b>tmp.txt
)
for /f "tokens=1-3 delims=-" %%a in (tmp.txt) do (
set titler=%%c
)
set titler=%titler:</title>=%
del "%~dp0tmp.html"
del "%~dp0tmp.txt"
set "titler=%titler:* =%"
if "%titler%"=="Invalid File" echo %msg07% & goto exitloop
set /a counter=%counter%+1
set /a levelid=%levelid%+1000
goto loop

:exitloop
echo.%msg08%%levelid%%msg09%
set /a loop2=%loop2%+1
set mod2=1
if "%loop2%"=="4" goto end
echo.%msg10%%loop2%%syntax%
goto loop

:end
cls
set levelidsave=%levelid%
set endloop=1
goto endloop2

:endloop2
if "%endloop%"=="1" set /a levelid=%levelidsave%-500
if "%endloop%"=="2" set /a levelid=%levelidsave%-750
if "%endloop%"=="3" set /a levelid=%levelidsave%-800
if "%endloop%"=="4" set /a levelid=%levelidsave%-1000
if "%endloop%"=="5" set /a levelid=%levelidsave%-1150
if "%endloop%"=="6" set /a levelid=%levelidsave%-1160 & goto end
set /a levelid=!levelid!+!random!%%!mod!+1
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
echo.%msg06%%levelid%%syntax%
ren "%~dp0file.php@id=%levelid%" tmp.html
for /f "tokens=1,* delims=:-" %%a in ('findstr /n .* tmp.html') do (
   if "%%a"=="6" echo %%b>tmp.txt
)
for /f "tokens=1-3 delims=-" %%a in (tmp.txt) do (
set titler=%%c
)
set titler=%titler:</title>=%
del "%~dp0tmp.html"
del "%~dp0tmp.txt"
set "titler=%titler:* =%"
set /a endloop=%endloop%+1
if "%titler%"=="Invalid File" echo %msg07% & goto endloop2
goto endloop2

:end
cls
echo.&echo.%msg01%
echo.%msg02%
echo.&echo.%msg11%%levelid%%syntax%
if not exist cfg md cfg
echo.%levelid%>cfg/maxnumber.cfg
echo.%msg12%
pause>nul
