::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCmDJHSF5ks/aDxVQQG+taJ2j1LwbS0+u+C7q04SWqw2e4C7
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJjZksaHErSXA==
::ZQ05rAF9IBncCkqN+0xwdVsHAlTMbCXqZg==
::ZQ05rAF9IAHYFVzEqQJkAjpYSQWWM3mzHLQY5/qb
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDFCoHWe/B6ET+uHh7u6IsC0=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWGCN8EM/MhNVQju7PQs=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJHSF5ks/aDxVQQG+aEGbCrAd/Ofp5vCGpkIPaLYVWYPe26CBMukJ60HrZ9gozn86
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color f0
setlocal enabledelayedexpansion
mode con cols=50 lines=15
cd "%~dp0"
pushd "%cd%"

:lang
chcp 936>nul 2>nul||goto lang2
set msgtitle=SM4J - 世界随机器 v3
set errormax1=    未找到记录关卡数量最大值的文件。
set errormax2=    关卡数量最大值将使用默认的11100。
set errormax3=    您也可以稍后手动打开UpdateLevelMaxNumber.bat
set errormax4=    来在线检测关卡数量最大值...
set errormax5=    按下任意键继续...
set msg01=      ----SM4J 世界随机器 v3----
set msg02=            By Bilibili 是一刀斩哒
set msg03=      按下任意键来生成一个16随机关卡的世界，
set msg35=      关卡为SM4J Altervista（官网）的随机关卡，
set msg04=      将保存至SM4J游戏内。
set msg05=      请确保电脑联网，
set msg06=      生成速度根据网速而定。
set msg07=开始下载关卡......
set msg08=下载失败，正在重试...
set msg09=已下载关卡
set msg10=清理可能产生的临时文件...
set msg11=开始生成世界地图。
set msg12=            生成完成！
set msg13=正在整理文件...
set msg14=            生成的世界名字是：
set msg15=            感谢您使用本软件！
set msg16=            按任意键退出....
goto start1

:lang2
chcp 437>nul 2>nul||goto lang3
mode con cols=70 lines=15
set lang=1
set msgtitle=SM4J - World Randomizer V3
set errormax1=   No file that records level max number is detected,
set errormax2=   The maximum number of levels will use the default value of 11100,
set errormax3=   You can also run UpdateLevelMaxNumber.bat later
set errormax4=   to manually update the maximum number of levels.
set errormax5=   Press any key to continue...
set msglang=   Multi-language version uses Google translate, may not be accurate
set msg01=      ----SM4J World Randomizer V3----
set msg02=            By Yidaozhan_Ya
set msg03=      Press any key to generate a random 16-level world,
set msg35=      Levels are from SM4J Altervista (official),
set msg04=      The generated world will be saved in SM4J.
set msg05=      Please make sure to be online！
set msg06=      This may takes a long time.
set msg07=Fetching level......
set msg08=Couldn't download the level, retrying...
set msg09=Downloaded level
set msg10=Cleaning up possible error files...
set msg11=Start to generate worldmap.
set msg12=            Generate Complete！
set msg13=Organizing files...
set msg14=            The generated world name is：
set msg15=            Thank you for using this software！
set msg16=            Press any key to exit....
goto start1

:lang3
mode con cols=75 lines=15
set lang=2
set msglang=     La version en varios idiomas utiliza el traductor de Google,
set msglang2=     puede que no sea precisa
set msgtitle=SM4J - Aleatorizador mundial V3
set errormax1=  No se detecta ningun archivo que registre el numero maximo de nivel,
set errormax2=  El numero maximo de niveles utilizara el valor predeterminado de 11100,
set errormax3=  Tambien puede ejecutar manualmente UpdateLevelMaxNumber.bat mas tarde
set errormax4=  para actualizar manualmente el numero maximo de niveles.
set errormax5=  Pulse cualquier tecla para continuar...
set msg01=      ----SM4J Aleatorizador mundial V3----
set msg02=            Por Yidaozhan_Ya
set msg03=      Presione cualquier tecla para generar un 16-nivel mundo,
set msg35=      Los niveles son de SM4J Altervista (oficial),
set msg04=      El mundo generado se guardara en SM4J.
set msg05=      Asegurate de estar en linea！
set msg06=      Esto puede llevar mucho tiempo.
set msg07=Nivel de recuperacion......
set msg08=No se pudo descargar el nivel,volviendo a intentarlo...
set msg09=Nivel descargado
set msg10=Limpiar posibles archivos de error...
set msg11=Empezar a generar mapa del mundo.
set msg12=            Generar completo！
set msg13=Organizar archivos...
set msg14=            El nombre mundial generado es：
set msg15=            Gracias por usar este software！
set msg16=            presiona cualquier tecla para salir....
goto start1


:start1
title %msgtitle%
if not exist cfg goto errormax
if not exist cfg\maxnumber.cfg goto errormax
echo.&echo.%msg01%
echo.          
echo.%msg02%
echo.&echo.%msg03%
echo.%msg35%
echo.%msg04%
echo.%msg05%
echo.%msg06%
if "%lang%"=="1" echo.&echo.&echo.%msglang%
if "%lang%"=="2" echo.&echo.%msglang%&echo.%msglang2%
pause>nul
del "%~dp0tmp.html"
rd /s /q mundo
cls
set /p max=<cfg/maxnumber.cfg
set /a max2=%max%-15
md mundo
echo.%msg07%
:lvl1
set /a lvl1=!random!%%!max2!+15
set levelid=%lvl1%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl1
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl1
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel1_id%levelid%.lvl">nul
echo.&echo.%msg09% 1！ ID%levelid%：%titler%

:lvl2
set /a lvl2=!random!%%!max2!+15
if "%lvl1%"=="%lvl2%" goto lvl2
set levelid=%lvl2%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl2
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl2
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel2_id%levelid%.lvl">nul
echo.&echo.%msg09% 2！ ID%levelid%：%titler%

:lvl3
set /a lvl3=!random!%%!max2!+15
if "%lvl3%"=="%lvl1%" goto lvl3
if "%lvl3%"=="%lvl2%" goto lvl3
set levelid=%lvl3%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl3
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl3
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel3_id%levelid%.lvl">nul
echo.&echo.%msg09% 3！ ID%levelid%：%titler%

:lvl4
set /a lvl4=!random!%%!max2!+15
if "%lvl4%"=="%lvl1%" goto lvl4
if "%lvl4%"=="%lvl2%" goto lvl4
if "%lvl4%"=="%lvl3%" goto lvl4
set levelid=%lvl4%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl4
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl4
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel4_id%levelid%.lvl">nul
echo.&echo.%msg09% 4！ ID%levelid%：%titler%

:lvl5
set /a lvl5=!random!%%!max2!+15
if "%lvl5%"=="%lvl1%" goto lvl5
if "%lvl5%"=="%lvl2%" goto lvl5
if "%lvl5%"=="%lvl3%" goto lvl5
if "%lvl5%"=="%lvl4%" goto lvl5
set levelid=%lvl5%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl5
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl5
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel5_id%levelid%.lvl">nul
echo.&echo.%msg09% 5！ ID%levelid%：%titler%

:lvl6
set /a lvl6=!random!%%!max2!+15
if "%lvl6%"=="%lvl1%" goto lvl6
if "%lvl6%"=="%lvl2%" goto lvl6
if "%lvl6%"=="%lvl3%" goto lvl6
if "%lvl6%"=="%lvl4%" goto lvl6
if "%lvl6%"=="%lvl5%" goto lvl6
set levelid=%lvl6%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl6
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl6
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel6_id%levelid%.lvl">nul
echo.&echo.%msg09% 6！ ID%levelid%：%titler%

:lvl7
set /a lvl7=!random!%%!max2!+15
if "%lvl7%"=="%lvl1%" goto lvl7
if "%lvl7%"=="%lvl2%" goto lvl7
if "%lvl7%"=="%lvl3%" goto lvl7
if "%lvl7%"=="%lvl4%" goto lvl7
if "%lvl7%"=="%lvl5%" goto lvl7
if "%lvl7%"=="%lvl6%" goto lvl7
set levelid=%lvl7%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl7
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl7
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel7_id%levelid%.lvl">nul
echo.&echo.%msg09% 7！ ID%levelid%：%titler%

:lvl8
set /a lvl8=!random!%%!max2!+15
if "%lvl8%"=="%lvl1%" goto lvl8
if "%lvl8%"=="%lvl2%" goto lvl8
if "%lvl8%"=="%lvl3%" goto lvl8
if "%lvl8%"=="%lvl4%" goto lvl8
if "%lvl8%"=="%lvl5%" goto lvl8
if "%lvl8%"=="%lvl6%" goto lvl8
if "%lvl8%"=="%lvl7%" goto lvl8
set levelid=%lvl8%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl8
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl8
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel8_id%levelid%.lvl">nul
echo.&echo.%msg09% 8！ ID%levelid%：%titler%

:lvl9
set /a lvl9=!random!%%!max2!+15
if "%lvl9%"=="%lvl1%" goto lvl9
if "%lvl9%"=="%lvl2%" goto lvl9
if "%lvl9%"=="%lvl3%" goto lvl9
if "%lvl9%"=="%lvl4%" goto lvl9
if "%lvl9%"=="%lvl5%" goto lvl9
if "%lvl9%"=="%lvl6%" goto lvl9
if "%lvl9%"=="%lvl7%" goto lvl9
if "%lvl9%"=="%lvl8%" goto lvl9
set levelid=%lvl9%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl9
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl9
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel9_id%levelid%.lvl">nul
echo.&echo.%msg09% 9！ ID%levelid%：%titler%

:lvl10
set /a lvl10=!random!%%!max2!+15
if "%lvl10%"=="%lvl1%" goto lvl10
if "%lvl10%"=="%lvl2%" goto lvl10
if "%lvl10%"=="%lvl3%" goto lvl10
if "%lvl10%"=="%lvl4%" goto lvl10
if "%lvl10%"=="%lvl5%" goto lvl10
if "%lvl10%"=="%lvl6%" goto lvl10
if "%lvl10%"=="%lvl7%" goto lvl10
if "%lvl10%"=="%lvl8%" goto lvl10
if "%lvl10%"=="%lvl9%" goto lvl10
set levelid=%lvl10%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl10
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl10
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel10_id%levelid%.lvl">nul
echo.&echo.%msg09% 10！ ID%levelid%：%titler%

:lvl11
set /a lvl11=!random!%%!max2!+15
if "%lvl11%"=="%lvl1%" goto lvl11
if "%lvl11%"=="%lvl2%" goto lvl11
if "%lvl11%"=="%lvl3%" goto lvl11
if "%lvl11%"=="%lvl4%" goto lvl11
if "%lvl11%"=="%lvl5%" goto lvl11
if "%lvl11%"=="%lvl6%" goto lvl11
if "%lvl11%"=="%lvl7%" goto lvl11
if "%lvl11%"=="%lvl8%" goto lvl11
if "%lvl11%"=="%lvl9%" goto lvl11
if "%lvl11%"=="%lvl10%" goto lvl11
set levelid=%lvl11%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl11
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl11
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel11_id%levelid%.lvl">nul
echo.&echo.%msg09% 11！ ID%levelid%：%titler%

:lvl12
set /a lvl12=!random!%%!max2!+15
if "%lvl12%"=="%lvl1%" goto lvl12
if "%lvl12%"=="%lvl2%" goto lvl12
if "%lvl12%"=="%lvl3%" goto lvl12
if "%lvl12%"=="%lvl4%" goto lvl12
if "%lvl12%"=="%lvl5%" goto lvl12
if "%lvl12%"=="%lvl6%" goto lvl12
if "%lvl12%"=="%lvl7%" goto lvl12
if "%lvl12%"=="%lvl8%" goto lvl12
if "%lvl12%"=="%lvl9%" goto lvl12
if "%lvl12%"=="%lvl10%" goto lvl12
if "%lvl12%"=="%lvl11%" goto lvl12
set levelid=%lvl12%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl12
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl12
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel12_id%levelid%.lvl">nul
echo.&echo.%msg09% 12！ ID%levelid%：%titler%

:lvl13
set /a lvl13=!random!%%!max2!+15
if "%lvl13%"=="%lvl1%" goto lvl13
if "%lvl13%"=="%lvl2%" goto lvl13
if "%lvl13%"=="%lvl3%" goto lvl13
if "%lvl13%"=="%lvl4%" goto lvl13
if "%lvl13%"=="%lvl5%" goto lvl13
if "%lvl13%"=="%lvl6%" goto lvl13
if "%lvl13%"=="%lvl7%" goto lvl13
if "%lvl13%"=="%lvl8%" goto lvl13
if "%lvl13%"=="%lvl9%" goto lvl13
if "%lvl13%"=="%lvl10%" goto lvl13
if "%lvl13%"=="%lvl11%" goto lvl13
if "%lvl13%"=="%lvl12%" goto lvl13
set levelid=%lvl13%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl13
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl13
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel13_id%levelid%.lvl">nul
echo.&echo.%msg09% 13！ ID%levelid%：%titler%

:lvl14
set /a lvl14=!random!%%!max2!+15
if "%lvl14%"=="%lvl1%" goto lvl14
if "%lvl14%"=="%lvl2%" goto lvl14
if "%lvl14%"=="%lvl3%" goto lvl14
if "%lvl14%"=="%lvl4%" goto lvl14
if "%lvl14%"=="%lvl5%" goto lvl14
if "%lvl14%"=="%lvl6%" goto lvl14
if "%lvl14%"=="%lvl7%" goto lvl14
if "%lvl14%"=="%lvl8%" goto lvl14
if "%lvl14%"=="%lvl9%" goto lvl14
if "%lvl14%"=="%lvl10%" goto lvl14
if "%lvl14%"=="%lvl11%" goto lvl14
if "%lvl14%"=="%lvl12%" goto lvl14
if "%lvl14%"=="%lvl13%" goto lvl14
set levelid=%lvl14%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl14
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl14
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel14_id%levelid%.lvl">nul
echo.&echo.%msg09% 14！ ID%levelid%：%titler%

:lvl15
set /a lvl15=!random!%%!max2!+15
if "%lvl15%"=="%lvl1%" goto lvl15
if "%lvl15%"=="%lvl2%" goto lvl15
if "%lvl15%"=="%lvl3%" goto lvl15
if "%lvl15%"=="%lvl4%" goto lvl15
if "%lvl15%"=="%lvl5%" goto lvl15
if "%lvl15%"=="%lvl6%" goto lvl15
if "%lvl15%"=="%lvl7%" goto lvl15
if "%lvl15%"=="%lvl8%" goto lvl15
if "%lvl15%"=="%lvl9%" goto lvl15
if "%lvl15%"=="%lvl10%" goto lvl15
if "%lvl15%"=="%lvl11%" goto lvl15
if "%lvl15%"=="%lvl12%" goto lvl15
if "%lvl15%"=="%lvl13%" goto lvl15
if "%lvl15%"=="%lvl14%" goto lvl15
set levelid=%lvl15%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl15
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl15
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel15_id%levelid%.lvl">nul
echo.&echo.%msg09% 15！ ID%levelid%：%titler%

:lvl16
set /a lvl16=!random!%%!max2!+15
if "%lvl16%"=="%lvl1%" goto lvl16
if "%lvl16%"=="%lvl2%" goto lvl16
if "%lvl16%"=="%lvl3%" goto lvl16
if "%lvl16%"=="%lvl4%" goto lvl16
if "%lvl16%"=="%lvl5%" goto lvl16
if "%lvl16%"=="%lvl6%" goto lvl16
if "%lvl16%"=="%lvl7%" goto lvl16
if "%lvl16%"=="%lvl8%" goto lvl16
if "%lvl16%"=="%lvl9%" goto lvl16
if "%lvl16%"=="%lvl10%" goto lvl16
if "%lvl16%"=="%lvl11%" goto lvl16
if "%lvl16%"=="%lvl12%" goto lvl16
if "%lvl16%"=="%lvl13%" goto lvl16
if "%lvl16%"=="%lvl14%" goto lvl16
if "%lvl16%"=="%lvl15%" goto lvl16
set levelid=%lvl16%
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/file.php?id=%levelid%"
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
if "%titler%"=="Invalid File" echo.%msg08% & goto lvl16
wget -q -P "%cd%" "https://carlosxdjavgames.altervista.org/wp-content/data_extra/%titler%%levelid%.lvl"
if not exist "%~dp0%titler%%levelid%.lvl" (
echo.%msg08%
goto lvl16
)
move "%~dp0%titler%%levelid%.lvl" "%~dp0mundo/nivel16_id%levelid%.lvl">nul
echo.&echo.%msg09% 16！ ID%levelid%：%titler%
echo.
echo.%msg10%
del "%~dp0*.lvl"
del "%~dp0file.php*"
echo.%msg11%
dir /b "%~dp0mundo" >temp2.log
for /f "tokens=1 delims=." %%i in (temp2.log) do (
    set/a n+=1
    if !n! equ 1 set nivel1=%%i
    if !n! equ 2 set nivel2=%%i
    if !n! equ 3 set nivel3=%%i
    if !n! equ 4 set nivel4=%%i
    if !n! equ 5 set nivel5=%%i
    if !n! equ 6 set nivel6=%%i
    if !n! equ 7 set nivel7=%%i
    if !n! equ 8 set nivel8=%%i
    if !n! equ 9 set nivel9=%%i
    if !n! equ 10 set nivel10=%%i
    if !n! equ 11 set nivel11=%%i
    if !n! equ 12 set nivel12=%%i
    if !n! equ 13 set nivel13=%%i
    if !n! equ 14 set nivel14=%%i
    if !n! equ 15 set nivel15=%%i
    if !n! equ 16 set nivel16=%%i
)
set mundoname=SM4JWorld_%random%
set mod3=3
set /a theme=!random!%%!mod3!+1
if "%theme%"=="1" set themename=GrassLand
if "%theme%"=="2" set themename=Desert
if "%theme%"=="3" set themename=Ice
set mod3=17
set /a music=!random!%%!mod3!+1
if "%music%"=="1" set mapmusic=26
if "%music%"=="2" set mapmusic=1
if "%music%"=="3" set mapmusic=17
if "%music%"=="4" set mapmusic=25
if "%music%"=="5" set mapmusic=29
if "%music%"=="6" set mapmusic=30
if "%music%"=="7" set mapmusic=31
if "%music%"=="8" set mapmusic=32
if "%music%"=="9" set mapmusic=33
if "%music%"=="10" set mapmusic=35
if "%music%"=="11" set mapmusic=38
if "%music%"=="12" set mapmusic=43
if "%music%"=="13" set mapmusic=45
if "%music%"=="13" set mapmusic=45
if "%music%"=="15" set mapmusic=52
if "%music%"=="16" set mapmusic=53
if "%music%"=="17" set mapmusic=59
if "%theme%"=="1" goto theme1
if "%theme%"=="2" goto theme2
if "%theme%"=="3" goto theme3

:theme1
set worldtile=obj_WE_tile2_Colocado
set mapmushroom=obj_WE_mapmushroom_Colocado
set mapflower=obj_WE_mapmushroom_Colocado
set mappiant=obj_WE_mapflower_Colocado
set mappalm=obj_WE_mapflower_Colocado
set maphills=obj_WE_maphills_Colocado
goto worldgenerate

:theme2
set worldtile=obj_WE_tile1_Colocado
set mapmushroom=obj_WE_mappalm_Colocado
set maphills=obj_WE_mappalm_Colocado
set mapflower=obj_WE_mapfire_Colocado
set mappiant=obj_WE_mappiramid_Colocado
set mappalm=obj_WE_mappiramid_Colocado
goto worldgenerate

:theme3
set worldtile=obj_WE_tile3_Colocado
set mapmushroom=obj_WE_mapice_Colocado
set maphills=obj_WE_solid_Colocado
set mapflower=obj_WE_mapice_Colocado
set mappiant=obj_WE_mapice_Colocado
set mappalm=obj_WE_mapice_Colocado
goto worldgenerate

:worldgenerate
echo.[options]>>%mundoname%.wrl
echo.lobby_enabled="off">>%mundoname%.wrl
echo.lobby_name="level.lvl">>%mundoname%.wrl
echo.room_y="432.000000">>%mundoname%.wrl
echo.room_x="2048.000000">>%mundoname%.wrl
echo.mapas="1.000000">>%mundoname%.wrl
echo.tiempo_count="300.000000">>%mundoname%.wrl
echo.tiempo="off">>%mundoname%.wrl
echo.mario_y="128.000000">>%mundoname%.wrl
echo.mario_x="112.000000">>%mundoname%.wrl
echo.storm="off">>%mundoname%.wrl
echo.modo="1.000000">>%mundoname%.wrl
echo.musica_le="159.000000">>%mundoname%.wrl
echo.musica="%mapmusic%.000000">>%mundoname%.wrl
echo.bg="1.000000">>%mundoname%.wrl
echo.background="115.000000">>%mundoname%.wrl
echo.[colocado9]>>%mundoname%.wrl
echo.114="1">>%mundoname%.wrl
echo.113="1">>%mundoname%.wrl
echo.112="224">>%mundoname%.wrl
echo.111="128">>%mundoname%.wrl
echo.110="obj_LE_solid">>%mundoname%.wrl
echo.104="1">>%mundoname%.wrl
echo.103="1">>%mundoname%.wrl
echo.102="224">>%mundoname%.wrl
echo.101="112">>%mundoname%.wrl
echo.100="obj_LE_solid">>%mundoname%.wrl
echo.94="1">>%mundoname%.wrl
echo.93="-11">>%mundoname%.wrl
echo.92="240">>%mundoname%.wrl
echo.91="288">>%mundoname%.wrl
echo.90="obj_LE_solid">>%mundoname%.wrl
echo.84="4">>%mundoname%.wrl
echo.83="1">>%mundoname%.wrl
echo.82="192">>%mundoname%.wrl
echo.81="288">>%mundoname%.wrl
echo.80="obj_LE_solid">>%mundoname%.wrl
echo.74="1">>%mundoname%.wrl
echo.73="10">>%mundoname%.wrl
echo.72="208">>%mundoname%.wrl
echo.71="112">>%mundoname%.wrl
echo.70="obj_LE_solid">>%mundoname%.wrl
echo.64="5">>%mundoname%.wrl
echo.63="1">>%mundoname%.wrl
echo.62="144">>%mundoname%.wrl
echo.61="96">>%mundoname%.wrl
echo.60="obj_LE_solid">>%mundoname%.wrl
echo.54="1">>%mundoname%.wrl
echo.53="-10">>%mundoname%.wrl
echo.52="176">>%mundoname%.wrl
echo.51="288">>%mundoname%.wrl
echo.50="obj_LE_solid">>%mundoname%.wrl
echo.44="4">>%mundoname%.wrl
echo.43="1">>%mundoname%.wrl
echo.42="128">>%mundoname%.wrl
echo.41="288">>%mundoname%.wrl
echo.40="obj_LE_solid">>%mundoname%.wrl
echo.34="1">>%mundoname%.wrl
echo.33="1">>%mundoname%.wrl
echo.32="112">>%mundoname%.wrl
echo.31="272">>%mundoname%.wrl
echo.30="obj_LE_solid">>%mundoname%.wrl
echo.24="1">>%mundoname%.wrl
echo.23="10">>%mundoname%.wrl
echo.22="112">>%mundoname%.wrl
echo.21="112">>%mundoname%.wrl
echo.20="obj_LE_solid">>%mundoname%.wrl
echo.14="1">>%mundoname%.wrl
echo.13="10">>%mundoname%.wrl
echo.12="144">>%mundoname%.wrl
echo.11="112">>%mundoname%.wrl
echo.10="obj_LE_solid">>%mundoname%.wrl
echo.04="1">>%mundoname%.wrl
echo.03="1">>%mundoname%.wrl
echo.02="128">>%mundoname%.wrl
echo.01="96">>%mundoname%.wrl
echo.00="obj_LE_solid">>%mundoname%.wrl
echo.[colocado3]>>%mundoname%.wrl
echo.154="1.000000">>%mundoname%.wrl
echo.153="%nivel1%">>%mundoname%.wrl
echo.152="128.000000">>%mundoname%.wrl
echo.151="144.000000">>%mundoname%.wrl
echo.150="obj_WE_worldColocado">>%mundoname%.wrl
echo.144="1.000000">>%mundoname%.wrl
echo.143="%nivel2%">>%mundoname%.wrl
echo.142="128.000000">>%mundoname%.wrl
echo.141="176.000000">>%mundoname%.wrl
echo.140="obj_WE_worldColocado">>%mundoname%.wrl
echo.134="1.000000">>%mundoname%.wrl
echo.133="%nivel3%">>%mundoname%.wrl
echo.132="128.000000">>%mundoname%.wrl
echo.131="208.000000">>%mundoname%.wrl
echo.130="obj_WE_worldColocado">>%mundoname%.wrl
echo.124="1.000000">>%mundoname%.wrl
echo.123="%nivel4%">>%mundoname%.wrl
echo.122="128.000000">>%mundoname%.wrl
echo.121="240.000000">>%mundoname%.wrl
echo.120="obj_WE_worldColocado">>%mundoname%.wrl
echo.114="1.000000">>%mundoname%.wrl
echo.113="%nivel5%">>%mundoname%.wrl
echo.112="160.000000">>%mundoname%.wrl
echo.111="240.000000">>%mundoname%.wrl
echo.110="obj_WE_world_2Colocado">>%mundoname%.wrl
echo.104="1.000000">>%mundoname%.wrl
echo.103="%nivel6%">>%mundoname%.wrl
echo.102="160.000000">>%mundoname%.wrl
echo.101="208.000000">>%mundoname%.wrl
echo.100="obj_WE_world_2Colocado">>%mundoname%.wrl
echo.94="1.000000">>%mundoname%.wrl
echo.93="%nivel7%">>%mundoname%.wrl
echo.92="160.000000">>%mundoname%.wrl
echo.91="176.000000">>%mundoname%.wrl
echo.90="obj_WE_world_2Colocado">>%mundoname%.wrl
echo.84="1.000000">>%mundoname%.wrl
echo.83="%nivel8%">>%mundoname%.wrl
echo.82="160.000000">>%mundoname%.wrl
echo.81="144.000000">>%mundoname%.wrl
echo.80="obj_WE_world_2Colocado">>%mundoname%.wrl
echo.74="1.000000">>%mundoname%.wrl
echo.73="%nivel9%">>%mundoname%.wrl
echo.72="192.000000">>%mundoname%.wrl
echo.71="144.000000">>%mundoname%.wrl
echo.70="obj_WE_world_3Colocado">>%mundoname%.wrl
echo.64="1.000000">>%mundoname%.wrl
echo.63="%nivel10%">>%mundoname%.wrl
echo.62="192.000000">>%mundoname%.wrl
echo.61="176.000000">>%mundoname%.wrl
echo.60="obj_WE_world_3Colocado">>%mundoname%.wrl
echo.54="1.000000">>%mundoname%.wrl
echo.53="%nivel11%">>%mundoname%.wrl
echo.52="192.000000">>%mundoname%.wrl
echo.51="208.000000">>%mundoname%.wrl
echo.50="obj_WE_world_3Colocado">>%mundoname%.wrl
echo.44="1.000000">>%mundoname%.wrl
echo.43="%nivel12%">>%mundoname%.wrl
echo.42="192.000000">>%mundoname%.wrl
echo.41="240.000000">>%mundoname%.wrl
echo.40="obj_WE_world_3Colocado">>%mundoname%.wrl
echo.34="1.000000">>%mundoname%.wrl
echo.33="%nivel13%">>%mundoname%.wrl
echo.32="224.000000">>%mundoname%.wrl
echo.31="240.000000">>%mundoname%.wrl
echo.30="obj_WE_world_4Colocado">>%mundoname%.wrl
echo.24="1.000000">>%mundoname%.wrl
echo.23="%nivel14%">>%mundoname%.wrl
echo.22="224.000000">>%mundoname%.wrl
echo.21="208.000000">>%mundoname%.wrl
echo.20="obj_WE_world_4Colocado">>%mundoname%.wrl
echo.14="1.000000">>%mundoname%.wrl
echo.13="%nivel15%">>%mundoname%.wrl
echo.12="224.000000">>%mundoname%.wrl
echo.11="176.000000">>%mundoname%.wrl
echo.10="obj_WE_world_4Colocado">>%mundoname%.wrl
echo.04="1.000000">>%mundoname%.wrl
echo.03="%nivel16%">>%mundoname%.wrl
echo.02="224.000000">>%mundoname%.wrl
echo.01="144.000000">>%mundoname%.wrl
echo.00="obj_WE_bowsercastle_Colocado">>%mundoname%.wrl
echo.[colocado2]>>%mundoname%.wrl
echo.262="192.000000">>%mundoname%.wrl
echo.261="128.000000">>%mundoname%.wrl
echo.260="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.252="160.000000">>%mundoname%.wrl
echo.251="128.000000">>%mundoname%.wrl
echo.250="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.242="128.000000">>%mundoname%.wrl
echo.241="128.000000">>%mundoname%.wrl
echo.240="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.232="192.000000">>%mundoname%.wrl
echo.231="112.000000">>%mundoname%.wrl
echo.230="obj_WE_ph_V_Colocado">>%mundoname%.wrl
echo.222="176.000000">>%mundoname%.wrl
echo.221="112.000000">>%mundoname%.wrl
echo.220="obj_WE_ph_V_Colocado">>%mundoname%.wrl
echo.212="224.000000">>%mundoname%.wrl
echo.211="272.000000">>%mundoname%.wrl
echo.210="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.202="224.000000">>%mundoname%.wrl
echo.201="272.000000">>%mundoname%.wrl
echo.200="obj_WE_ph_V_Colocado">>%mundoname%.wrl
echo.192="160.000000">>%mundoname%.wrl
echo.191="272.000000">>%mundoname%.wrl
echo.190="obj_WE_ph_V_Colocado">>%mundoname%.wrl
echo.182="160.000000">>%mundoname%.wrl
echo.181="272.000000">>%mundoname%.wrl
echo.180="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.172="208.000000">>%mundoname%.wrl
echo.171="272.000000">>%mundoname%.wrl
echo.170="obj_WE_ph_V_Colocado">>%mundoname%.wrl
echo.162="144.000000">>%mundoname%.wrl
echo.161="272.000000">>%mundoname%.wrl
echo.160="obj_WE_ph_V_Colocado">>%mundoname%.wrl
echo.152="224.000000">>%mundoname%.wrl
echo.151="224.000000">>%mundoname%.wrl
echo.150="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.142="224.000000">>%mundoname%.wrl
echo.141="160.000000">>%mundoname%.wrl
echo.140="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.132="224.000000">>%mundoname%.wrl
echo.131="192.000000">>%mundoname%.wrl
echo.130="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.122="224.000000">>%mundoname%.wrl
echo.121="256.000000">>%mundoname%.wrl
echo.120="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.112="192.000000">>%mundoname%.wrl
echo.111="256.000000">>%mundoname%.wrl
echo.110="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.102="192.000000">>%mundoname%.wrl
echo.101="224.000000">>%mundoname%.wrl
echo.100="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.92="192.000000">>%mundoname%.wrl
echo.91="192.000000">>%mundoname%.wrl
echo.90="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.82="192.000000">>%mundoname%.wrl
echo.81="160.000000">>%mundoname%.wrl
echo.80="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.72="160.000000">>%mundoname%.wrl
echo.71="256.000000">>%mundoname%.wrl
echo.70="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.62="128.000000">>%mundoname%.wrl
echo.61="256.000000">>%mundoname%.wrl
echo.60="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.52="160.000000">>%mundoname%.wrl
echo.51="160.000000">>%mundoname%.wrl
echo.50="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.42="160.000000">>%mundoname%.wrl
echo.41="192.000000">>%mundoname%.wrl
echo.40="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.32="160.000000">>%mundoname%.wrl
echo.31="224.000000">>%mundoname%.wrl
echo.30="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.22="128.000000">>%mundoname%.wrl
echo.21="224.000000">>%mundoname%.wrl
echo.20="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.12="128.000000">>%mundoname%.wrl
echo.11="192.000000">>%mundoname%.wrl
echo.10="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.02="128.000000">>%mundoname%.wrl
echo.01="160.000000">>%mundoname%.wrl
echo.00="obj_WE_ph_H_Colocado">>%mundoname%.wrl
echo.[colocado]>>%mundoname%.wrl
echo.1512="176.000000">>%mundoname%.wrl
echo.1511="128.000000">>%mundoname%.wrl
echo.1510="%mappalm%">>%mundoname%.wrl
echo.1502="144.000000">>%mundoname%.wrl
echo.1501="128.000000">>%mundoname%.wrl
echo.1500="%maphills%">>%mundoname%.wrl
echo.1492="112.000000">>%mundoname%.wrl
echo.1491="128.000000">>%mundoname%.wrl
echo.1490="%maphills%">>%mundoname%.wrl
echo.1482="224.000000">>%mundoname%.wrl
echo.1481="112.000000">>%mundoname%.wrl
echo.1480="%mapflower%">>%mundoname%.wrl
echo.1472="192.000000">>%mundoname%.wrl
echo.1471="112.000000">>%mundoname%.wrl
echo.1470="obj_WE_mapstop_Colocado">>%mundoname%.wrl
echo.1462="192.000000">>%mundoname%.wrl
echo.1461="96.000000">>%mundoname%.wrl
echo.1460="%mapflower%">>%mundoname%.wrl
echo.1452="128.000000">>%mundoname%.wrl
echo.1451="96.000000">>%mundoname%.wrl
echo.1450="%maphills%">>%mundoname%.wrl
echo.1442="160.000000">>%mundoname%.wrl
echo.1441="96.000000">>%mundoname%.wrl
echo.1440="%mapmushroom%">>%mundoname%.wrl
echo.1432="176.000000">>%mundoname%.wrl
echo.1431="288.000000">>%mundoname%.wrl
echo.1430="%mapflower%">>%mundoname%.wrl
echo.1422="240.000000">>%mundoname%.wrl
echo.1421="192.000000">>%mundoname%.wrl
echo.1420="%mapflower%">>%mundoname%.wrl
echo.1412="240.000000">>%mundoname%.wrl
echo.1411="240.000000">>%mundoname%.wrl
echo.1410="%mapflower%">>%mundoname%.wrl
echo.1402="208.000000">>%mundoname%.wrl
echo.1401="256.000000">>%mundoname%.wrl
echo.1400="%mapflower%">>%mundoname%.wrl
echo.1392="208.000000">>%mundoname%.wrl
echo.1391="240.000000">>%mundoname%.wrl
echo.1390="%mappiant%">>%mundoname%.wrl
echo.1382="208.000000">>%mundoname%.wrl
echo.1381="208.000000">>%mundoname%.wrl
echo.1380="%mappiant%">>%mundoname%.wrl
echo.1372="208.000000">>%mundoname%.wrl
echo.1371="176.000000">>%mundoname%.wrl
echo.1370="%mappiant%">>%mundoname%.wrl
echo.1362="208.000000">>%mundoname%.wrl
echo.1361="144.000000">>%mundoname%.wrl
echo.1360="%mappalm%">>%mundoname%.wrl
echo.1352="176.000000">>%mundoname%.wrl
echo.1351="160.000000">>%mundoname%.wrl
echo.1350="%mappalm%">>%mundoname%.wrl
echo.1342="176.000000">>%mundoname%.wrl
echo.1341="224.000000">>%mundoname%.wrl
echo.1340="%mappalm%">>%mundoname%.wrl
echo.1332="176.000000">>%mundoname%.wrl
echo.1331="192.000000">>%mundoname%.wrl
echo.1330="%mappalm%">>%mundoname%.wrl
echo.1322="160.000000">>%mundoname%.wrl
echo.1321="288.000000">>%mundoname%.wrl
echo.1320="%mapmushroom%">>%mundoname%.wrl
echo.1312="176.000000">>%mundoname%.wrl
echo.1311="256.000000">>%mundoname%.wrl
echo.1310="%mapmushroom%">>%mundoname%.wrl
echo.1302="144.000000">>%mundoname%.wrl
echo.1301="256.000000">>%mundoname%.wrl
echo.1300="%mapmushroom%">>%mundoname%.wrl
echo.1292="144.000000">>%mundoname%.wrl
echo.1291="224.000000">>%mundoname%.wrl
echo.1290="%mapmushroom%">>%mundoname%.wrl
echo.1282="144.000000">>%mundoname%.wrl
echo.1281="192.000000">>%mundoname%.wrl
echo.1280="%mapmushroom%">>%mundoname%.wrl
echo.1272="144.000000">>%mundoname%.wrl
echo.1271="160.000000">>%mundoname%.wrl
echo.1270="%mapmushroom%">>%mundoname%.wrl
echo.1262="128.000000">>%mundoname%.wrl
echo.1261="288.000000">>%mundoname%.wrl
echo.1260="%maphills%">>%mundoname%.wrl
echo.1252="112.000000">>%mundoname%.wrl
echo.1251="256.000000">>%mundoname%.wrl
echo.1250="%maphills%">>%mundoname%.wrl
echo.1242="112.000000">>%mundoname%.wrl
echo.1241="224.000000">>%mundoname%.wrl
echo.1240="%maphills%">>%mundoname%.wrl
echo.1232="112.000000">>%mundoname%.wrl
echo.1231="192.000000">>%mundoname%.wrl
echo.1230="%maphills%">>%mundoname%.wrl
echo.1222="112.000000">>%mundoname%.wrl
echo.1221="160.000000">>%mundoname%.wrl
echo.1220="%maphills%">>%mundoname%.wrl
echo.1212="224.000000">>%mundoname%.wrl
echo.1211="272.000000">>%mundoname%.wrl
echo.1210="obj_WE_mapstop_Colocado">>%mundoname%.wrl
echo.1202="160.000000">>%mundoname%.wrl
echo.1201="272.000000">>%mundoname%.wrl
echo.1200="obj_WE_mapstop_Colocado">>%mundoname%.wrl
echo.1192="240.000000">>%mundoname%.wrl
echo.1191="128.000000">>%mundoname%.wrl
echo.1190="%worldtile%">>%mundoname%.wrl
echo.1182="208.000000">>%mundoname%.wrl
echo.1181="128.000000">>%mundoname%.wrl
echo.1180="%worldtile%">>%mundoname%.wrl
echo.1172="224.000000">>%mundoname%.wrl
echo.1171="128.000000">>%mundoname%.wrl
echo.1170="%worldtile%">>%mundoname%.wrl
echo.1162="192.000000">>%mundoname%.wrl
echo.1161="128.000000">>%mundoname%.wrl
echo.1160="%worldtile%">>%mundoname%.wrl
echo.1152="176.000000">>%mundoname%.wrl
echo.1151="128.000000">>%mundoname%.wrl
echo.1150="%worldtile%">>%mundoname%.wrl
echo.1142="160.000000">>%mundoname%.wrl
echo.1141="128.000000">>%mundoname%.wrl
echo.1140="%worldtile%">>%mundoname%.wrl
echo.1132="128.000000">>%mundoname%.wrl
echo.1131="128.000000">>%mundoname%.wrl
echo.1130="%worldtile%">>%mundoname%.wrl
echo.1122="144.000000">>%mundoname%.wrl
echo.1121="128.000000">>%mundoname%.wrl
echo.1120="%worldtile%">>%mundoname%.wrl
echo.1112="112.000000">>%mundoname%.wrl
echo.1111="128.000000">>%mundoname%.wrl
echo.1110="%worldtile%">>%mundoname%.wrl
echo.1102="192.000000">>%mundoname%.wrl
echo.1101="112.000000">>%mundoname%.wrl
echo.1100="%worldtile%">>%mundoname%.wrl
echo.1092="160.000000">>%mundoname%.wrl
echo.1091="112.000000">>%mundoname%.wrl
echo.1090="obj_WE_mushhousegreenColocado">>%mundoname%.wrl
echo.1082="240.000000">>%mundoname%.wrl
echo.1081="112.000000">>%mundoname%.wrl
echo.1080="%worldtile%">>%mundoname%.wrl
echo.1072="224.000000">>%mundoname%.wrl
echo.1071="112.000000">>%mundoname%.wrl
echo.1070="%worldtile%">>%mundoname%.wrl
echo.1062="208.000000">>%mundoname%.wrl
echo.1061="112.000000">>%mundoname%.wrl
echo.1060="%worldtile%">>%mundoname%.wrl
echo.1052="176.000000">>%mundoname%.wrl
echo.1051="112.000000">>%mundoname%.wrl
echo.1050="%worldtile%">>%mundoname%.wrl
echo.1042="128.000000">>%mundoname%.wrl
echo.1041="112.000000">>%mundoname%.wrl
echo.1040="%worldtile%">>%mundoname%.wrl
echo.1032="112.000000">>%mundoname%.wrl
echo.1031="112.000000">>%mundoname%.wrl
echo.1030="%worldtile%">>%mundoname%.wrl
echo.1022="144.000000">>%mundoname%.wrl
echo.1021="112.000000">>%mundoname%.wrl
echo.1020="%worldtile%">>%mundoname%.wrl
echo.1012="160.000000">>%mundoname%.wrl
echo.1011="112.000000">>%mundoname%.wrl
echo.1010="%worldtile%">>%mundoname%.wrl
echo.1002="128.000000">>%mundoname%.wrl
echo.1001="96.000000">>%mundoname%.wrl
echo.1000="%worldtile%">>%mundoname%.wrl
echo.992="240.000000">>%mundoname%.wrl
echo.991="96.000000">>%mundoname%.wrl
echo.990="%worldtile%">>%mundoname%.wrl
echo.982="224.000000">>%mundoname%.wrl
echo.981="96.000000">>%mundoname%.wrl
echo.980="%worldtile%">>%mundoname%.wrl
echo.972="208.000000">>%mundoname%.wrl
echo.971="96.000000">>%mundoname%.wrl
echo.970="%worldtile%">>%mundoname%.wrl
echo.962="192.000000">>%mundoname%.wrl
echo.961="96.000000">>%mundoname%.wrl
echo.960="%worldtile%">>%mundoname%.wrl
echo.952="176.000000">>%mundoname%.wrl
echo.951="96.000000">>%mundoname%.wrl
echo.950="%worldtile%">>%mundoname%.wrl
echo.942="160.000000">>%mundoname%.wrl
echo.941="96.000000">>%mundoname%.wrl
echo.940="%worldtile%">>%mundoname%.wrl
echo.932="144.000000">>%mundoname%.wrl
echo.931="96.000000">>%mundoname%.wrl
echo.930="%worldtile%">>%mundoname%.wrl
echo.922="112.000000">>%mundoname%.wrl
echo.921="96.000000">>%mundoname%.wrl
echo.920="%worldtile%">>%mundoname%.wrl
echo.912="208.000000">>%mundoname%.wrl
echo.911="256.000000">>%mundoname%.wrl
echo.910="%worldtile%">>%mundoname%.wrl
echo.902="176.000000">>%mundoname%.wrl
echo.901="144.000000">>%mundoname%.wrl
echo.900="%worldtile%">>%mundoname%.wrl
echo.892="176.000000">>%mundoname%.wrl
echo.891="176.000000">>%mundoname%.wrl
echo.890="%worldtile%">>%mundoname%.wrl
echo.882="112.000000">>%mundoname%.wrl
echo.881="240.000000">>%mundoname%.wrl
echo.880="%worldtile%">>%mundoname%.wrl
echo.872="192.000000">>%mundoname%.wrl
echo.871="272.000000">>%mundoname%.wrl
echo.870="obj_WE_mushhouseblueColocado">>%mundoname%.wrl
echo.862="128.000000">>%mundoname%.wrl
echo.861="272.000000">>%mundoname%.wrl
echo.860="%worldtile%">>%mundoname%.wrl
echo.852="128.000000">>%mundoname%.wrl
echo.851="272.000000">>%mundoname%.wrl
echo.850="obj_WE_mushhouseColocado">>%mundoname%.wrl
echo.842="176.000000">>%mundoname%.wrl
echo.841="288.000000">>%mundoname%.wrl
echo.840="%worldtile%">>%mundoname%.wrl
echo.832="192.000000">>%mundoname%.wrl
echo.831="288.000000">>%mundoname%.wrl
echo.830="%worldtile%">>%mundoname%.wrl
echo.822="208.000000">>%mundoname%.wrl
echo.821="288.000000">>%mundoname%.wrl
echo.820="%worldtile%">>%mundoname%.wrl
echo.812="224.000000">>%mundoname%.wrl
echo.811="288.000000">>%mundoname%.wrl
echo.810="%worldtile%">>%mundoname%.wrl
echo.802="240.000000">>%mundoname%.wrl
echo.801="288.000000">>%mundoname%.wrl
echo.800="%worldtile%">>%mundoname%.wrl
echo.792="240.000000">>%mundoname%.wrl
echo.791="272.000000">>%mundoname%.wrl
echo.790="%worldtile%">>%mundoname%.wrl
echo.782="224.000000">>%mundoname%.wrl
echo.781="272.000000">>%mundoname%.wrl
echo.780="%worldtile%">>%mundoname%.wrl
echo.772="208.000000">>%mundoname%.wrl
echo.771="272.000000">>%mundoname%.wrl
echo.770="%worldtile%">>%mundoname%.wrl
echo.762="192.000000">>%mundoname%.wrl
echo.761="272.000000">>%mundoname%.wrl
echo.760="%worldtile%">>%mundoname%.wrl
echo.752="176.000000">>%mundoname%.wrl
echo.751="272.000000">>%mundoname%.wrl
echo.750="%worldtile%">>%mundoname%.wrl
echo.742="176.000000">>%mundoname%.wrl
echo.741="256.000000">>%mundoname%.wrl
echo.740="%worldtile%">>%mundoname%.wrl
echo.732="192.000000">>%mundoname%.wrl
echo.731="256.000000">>%mundoname%.wrl
echo.730="%worldtile%">>%mundoname%.wrl
echo.722="240.000000">>%mundoname%.wrl
echo.721="256.000000">>%mundoname%.wrl
echo.720="%worldtile%">>%mundoname%.wrl
echo.712="208.000000">>%mundoname%.wrl
echo.711="240.000000">>%mundoname%.wrl
echo.710="%worldtile%">>%mundoname%.wrl
echo.702="240.000000">>%mundoname%.wrl
echo.701="224.000000">>%mundoname%.wrl
echo.700="%worldtile%">>%mundoname%.wrl
echo.692="240.000000">>%mundoname%.wrl
echo.691="240.000000">>%mundoname%.wrl
echo.690="%worldtile%">>%mundoname%.wrl
echo.682="224.000000">>%mundoname%.wrl
echo.681="256.000000">>%mundoname%.wrl
echo.680="%worldtile%">>%mundoname%.wrl
echo.672="176.000000">>%mundoname%.wrl
echo.671="240.000000">>%mundoname%.wrl
echo.670="%worldtile%">>%mundoname%.wrl
echo.662="176.000000">>%mundoname%.wrl
echo.661="224.000000">>%mundoname%.wrl
echo.660="%worldtile%">>%mundoname%.wrl
echo.652="224.000000">>%mundoname%.wrl
echo.651="224.000000">>%mundoname%.wrl
echo.650="%worldtile%">>%mundoname%.wrl
echo.642="208.000000">>%mundoname%.wrl
echo.641="192.000000">>%mundoname%.wrl
echo.640="%worldtile%">>%mundoname%.wrl
echo.632="240.000000">>%mundoname%.wrl
echo.631="208.000000">>%mundoname%.wrl
echo.630="%worldtile%">>%mundoname%.wrl
echo.622="208.000000">>%mundoname%.wrl
echo.621="224.000000">>%mundoname%.wrl
echo.620="%worldtile%">>%mundoname%.wrl
echo.612="192.000000">>%mundoname%.wrl
echo.611="224.000000">>%mundoname%.wrl
echo.610="%worldtile%">>%mundoname%.wrl
echo.602="208.000000">>%mundoname%.wrl
echo.601="208.000000">>%mundoname%.wrl
echo.600="%worldtile%">>%mundoname%.wrl
echo.592="208.000000">>%mundoname%.wrl
echo.591="176.000000">>%mundoname%.wrl
echo.590="%worldtile%">>%mundoname%.wrl
echo.582="192.000000">>%mundoname%.wrl
echo.581="192.000000">>%mundoname%.wrl
echo.580="%worldtile%">>%mundoname%.wrl
echo.572="192.000000">>%mundoname%.wrl
echo.571="160.000000">>%mundoname%.wrl
echo.570="%worldtile%">>%mundoname%.wrl
echo.562="208.000000">>%mundoname%.wrl
echo.561="160.000000">>%mundoname%.wrl
echo.560="%worldtile%">>%mundoname%.wrl
echo.552="240.000000">>%mundoname%.wrl
echo.551="192.000000">>%mundoname%.wrl
echo.550="%worldtile%">>%mundoname%.wrl
echo.542="240.000000">>%mundoname%.wrl
echo.541="176.000000">>%mundoname%.wrl
echo.540="%worldtile%">>%mundoname%.wrl
echo.532="240.000000">>%mundoname%.wrl
echo.531="160.000000">>%mundoname%.wrl
echo.530="%worldtile%">>%mundoname%.wrl
echo.522="240.000000">>%mundoname%.wrl
echo.521="144.000000">>%mundoname%.wrl
echo.520="%worldtile%">>%mundoname%.wrl
echo.512="208.000000">>%mundoname%.wrl
echo.511="144.000000">>%mundoname%.wrl
echo.510="%worldtile%">>%mundoname%.wrl
echo.502="224.000000">>%mundoname%.wrl
echo.501="192.000000">>%mundoname%.wrl
echo.500="%worldtile%">>%mundoname%.wrl
echo.492="224.000000">>%mundoname%.wrl
echo.491="160.000000">>%mundoname%.wrl
echo.490="%worldtile%">>%mundoname%.wrl
echo.482="176.000000">>%mundoname%.wrl
echo.481="160.000000">>%mundoname%.wrl
echo.480="%worldtile%">>%mundoname%.wrl
echo.472="176.000000">>%mundoname%.wrl
echo.471="192.000000">>%mundoname%.wrl
echo.470="%worldtile%">>%mundoname%.wrl
echo.462="176.000000">>%mundoname%.wrl
echo.461="208.000000">>%mundoname%.wrl
echo.460="%worldtile%">>%mundoname%.wrl
echo.452="112.000000">>%mundoname%.wrl
echo.451="288.000000">>%mundoname%.wrl
echo.450="%worldtile%">>%mundoname%.wrl
echo.442="128.000000">>%mundoname%.wrl
echo.441="192.000000">>%mundoname%.wrl
echo.440="%worldtile%">>%mundoname%.wrl
echo.432="160.000000">>%mundoname%.wrl
echo.431="288.000000">>%mundoname%.wrl
echo.430="%worldtile%">>%mundoname%.wrl
echo.422="128.000000">>%mundoname%.wrl
echo.421="256.000000">>%mundoname%.wrl
echo.420="%worldtile%">>%mundoname%.wrl
echo.412="112.000000">>%mundoname%.wrl
echo.411="272.000000">>%mundoname%.wrl
echo.410="%worldtile%">>%mundoname%.wrl
echo.402="128.000000">>%mundoname%.wrl
echo.401="288.000000">>%mundoname%.wrl
echo.400="%worldtile%">>%mundoname%.wrl
echo.392="160.000000">>%mundoname%.wrl
echo.391="224.000000">>%mundoname%.wrl
echo.390="%worldtile%">>%mundoname%.wrl
echo.382="144.000000">>%mundoname%.wrl
echo.381="288.000000">>%mundoname%.wrl
echo.380="%worldtile%">>%mundoname%.wrl
echo.372="160.000000">>%mundoname%.wrl
echo.371="272.000000">>%mundoname%.wrl
echo.370="%worldtile%">>%mundoname%.wrl
echo.362="160.000000">>%mundoname%.wrl
echo.361="256.000000">>%mundoname%.wrl
echo.360="%worldtile%">>%mundoname%.wrl
echo.352="144.000000">>%mundoname%.wrl
echo.351="272.000000">>%mundoname%.wrl
echo.350="%worldtile%">>%mundoname%.wrl
echo.342="144.000000">>%mundoname%.wrl
echo.341="256.000000">>%mundoname%.wrl
echo.340="%worldtile%">>%mundoname%.wrl
echo.332="144.000000">>%mundoname%.wrl
echo.331="240.000000">>%mundoname%.wrl
echo.330="%worldtile%">>%mundoname%.wrl
echo.322="144.000000">>%mundoname%.wrl
echo.321="224.000000">>%mundoname%.wrl
echo.320="%worldtile%">>%mundoname%.wrl
echo.312="128.000000">>%mundoname%.wrl
echo.311="224.000000">>%mundoname%.wrl
echo.310="%worldtile%">>%mundoname%.wrl
echo.302="112.000000">>%mundoname%.wrl
echo.301="256.000000">>%mundoname%.wrl
echo.300="%worldtile%">>%mundoname%.wrl
echo.292="112.000000">>%mundoname%.wrl
echo.291="224.000000">>%mundoname%.wrl
echo.290="%worldtile%">>%mundoname%.wrl
echo.282="112.000000">>%mundoname%.wrl
echo.281="208.000000">>%mundoname%.wrl
echo.280="%worldtile%">>%mundoname%.wrl
echo.272="144.000000">>%mundoname%.wrl
echo.271="208.000000">>%mundoname%.wrl
echo.270="%worldtile%">>%mundoname%.wrl
echo.262="160.000000">>%mundoname%.wrl
echo.261="192.000000">>%mundoname%.wrl
echo.260="%worldtile%">>%mundoname%.wrl
echo.252="144.000000">>%mundoname%.wrl
echo.251="192.000000">>%mundoname%.wrl
echo.250="%worldtile%">>%mundoname%.wrl
echo.242="112.000000">>%mundoname%.wrl
echo.241="192.000000">>%mundoname%.wrl
echo.240="%worldtile%">>%mundoname%.wrl
echo.232="144.000000">>%mundoname%.wrl
echo.231="176.000000">>%mundoname%.wrl
echo.230="%worldtile%">>%mundoname%.wrl
echo.222="112.000000">>%mundoname%.wrl
echo.221="176.000000">>%mundoname%.wrl
echo.220="%worldtile%">>%mundoname%.wrl
echo.212="112.000000">>%mundoname%.wrl
echo.211="160.000000">>%mundoname%.wrl
echo.210="%worldtile%">>%mundoname%.wrl
echo.202="112.000000">>%mundoname%.wrl
echo.201="144.000000">>%mundoname%.wrl
echo.200="%worldtile%">>%mundoname%.wrl
echo.192="144.000000">>%mundoname%.wrl
echo.191="160.000000">>%mundoname%.wrl
echo.190="%worldtile%">>%mundoname%.wrl
echo.182="144.000000">>%mundoname%.wrl
echo.181="144.000000">>%mundoname%.wrl
echo.180="%worldtile%">>%mundoname%.wrl
echo.172="160.000000">>%mundoname%.wrl
echo.171="160.000000">>%mundoname%.wrl
echo.170="%worldtile%">>%mundoname%.wrl
echo.162="128.000000">>%mundoname%.wrl
echo.161="160.000000">>%mundoname%.wrl
echo.160="%worldtile%">>%mundoname%.wrl
echo.152="128.000000">>%mundoname%.wrl
echo.151="240.000000">>%mundoname%.wrl
echo.150="%worldtile%">>%mundoname%.wrl
echo.142="128.000000">>%mundoname%.wrl
echo.141="208.000000">>%mundoname%.wrl
echo.140="%worldtile%">>%mundoname%.wrl
echo.132="160.000000">>%mundoname%.wrl
echo.131="144.000000">>%mundoname%.wrl
echo.130="%worldtile%">>%mundoname%.wrl
echo.122="128.000000">>%mundoname%.wrl
echo.121="144.000000">>%mundoname%.wrl
echo.120="%worldtile%">>%mundoname%.wrl
echo.112="128.000000">>%mundoname%.wrl
echo.111="176.000000">>%mundoname%.wrl
echo.110="%worldtile%">>%mundoname%.wrl
echo.102="160.000000">>%mundoname%.wrl
echo.101="176.000000">>%mundoname%.wrl
echo.100="%worldtile%">>%mundoname%.wrl
echo.92="192.000000">>%mundoname%.wrl
echo.91="144.000000">>%mundoname%.wrl
echo.90="%worldtile%">>%mundoname%.wrl
echo.82="224.000000">>%mundoname%.wrl
echo.81="144.000000">>%mundoname%.wrl
echo.80="%worldtile%">>%mundoname%.wrl
echo.72="224.000000">>%mundoname%.wrl
echo.71="176.000000">>%mundoname%.wrl
echo.70="%worldtile%">>%mundoname%.wrl
echo.62="192.000000">>%mundoname%.wrl
echo.61="176.000000">>%mundoname%.wrl
echo.60="%worldtile%">>%mundoname%.wrl
echo.52="192.000000">>%mundoname%.wrl
echo.51="208.000000">>%mundoname%.wrl
echo.50="%worldtile%">>%mundoname%.wrl
echo.42="160.000000">>%mundoname%.wrl
echo.41="208.000000">>%mundoname%.wrl
echo.40="%worldtile%">>%mundoname%.wrl
echo.32="160.000000">>%mundoname%.wrl
echo.31="240.000000">>%mundoname%.wrl
echo.30="%worldtile%">>%mundoname%.wrl
echo.22="192.000000">>%mundoname%.wrl
echo.21="240.000000">>%mundoname%.wrl
echo.20="%worldtile%">>%mundoname%.wrl
echo.12="224.000000">>%mundoname%.wrl
echo.11="240.000000">>%mundoname%.wrl
echo.10="%worldtile%">>%mundoname%.wrl
echo.02="224.000000">>%mundoname%.wrl
echo.01="208.000000">>%mundoname%.wrl
echo.00="%worldtile%">>%mundoname%.wrl
echo.%msg13%
del temp2.log >nul
md %mundoname%
move "%~dp0mundo\*" "%~dp0%mundoname%" >nul
move "%~dp0%mundoname%.wrl" "%~dp0%mundoname%" >nul
xcopy /i /s /-y "%~dp0%mundoname%" "%AppData%\Super_Mario_4_Jugadores\Mundos\%mundoname%"
rd /s /q "%mundoname%"
rd /s /q mundo
cls
echo.&echo.%msg01%
echo.          
echo.%msg02%
echo.%msg12%
echo.%msg14%：%mundoname%！
echo.%msg15%
echo.%msg16%
pause>nul
endlocal
exit

:errormax

cls
echo.&echo.%msg01%
echo.          
echo.%msg02%
echo.&echo.%errormax1%
echo.%errormax2%
echo.%errormax3%
echo.%errormax4%
echo.&echo.%errormax5%
pause>nul
cls
md cfg
echo.11100>cfg\maxnumber.cfg
goto start1