Echo OFF
TITLE "Path OF Exile Scraper"
echo Made Easy by BTSpaniel
CLS
FOR /F "tokens=3 delims= " %%G IN ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') DO (SET docsdir=%%G)
rem %SystemRoot%\explorer.exe "%docsdir%\My Games\Path of Exile\"
goto menu

:menu
CLS
echo "Scraper Started"
timeout 1 >nul
goto download

:download
cd %cd%\scraper\
del of.txt
del off.txt
CLS
echo Starting
echo Downloading Forum Post
powershell -Command "Invoke-WebRequest https://www.pathofexile.com/forum/view-thread/1259059 -OutFile ofsite.txt
call scraper.bat
timeout 3 >nul
echo "Cleaning Up"
del ofsite.txt
del ofsited.txt
del ofsitelinks.txt
del ofsitelinksx.txt
timeout 3 >nul
CLS
echo "Sorting"
setlocal EnableExtensions EnableDelayedExpansion
for /f "delims=" %%a in ('Type "of.txt"') do (
    set /a count+=1
    set "Line[!count!]=%%a"
)
rem Display array elements
For /L %%i in (1,1,%Count%) do (
    echo "Var%%i" is assigned to ==^> "!Line[%%i]!"
)
timeout 3 >nul
for /f "delims=" %%a in ('Type "off.txt"') do (
    set /a count2+=1
    set "Line2[!count2!]=%%a"
)
rem Display array elements
For /L %%i in (1,1,%Count2%) do (
    echo "Var2%%i" is assigned to ==^> "!Line2[%%i]!"
)
timeout 3 >nul
CLS
echo Downloading Latest Filters
echo -download !Line[1]! -OutFile !Line2[1]!
echo -download !Line[2]! -OutFile !Line2[2]!
echo -download !Line[3]! -OutFile !Line2[3]!
echo -download !Line[4]! -OutFile !Line2[4]!
CLS
echo Downloading Latest Filters
timeout 3 >nul
cd /d "%docsdir%\My Games\Path of Exile\"
powershell -Command "Invoke-WebRequest !Line[1]! -OutFile !Line2[1]!
powershell -Command "Invoke-WebRequest !Line[2]! -OutFile !Line2[2]!
powershell -Command "Invoke-WebRequest !Line[3]! -OutFile !Line2[3]!
powershell -Command "Invoke-WebRequest !Line[4]! -OutFile !Line2[4]!
CLS
echo Download Complete
echo Press Anykey to Finish
pause
timeout 3 >nul
exit
