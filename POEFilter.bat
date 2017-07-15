Echo OFF
TITLE LAZY POE Filter Downloader
echo Made Easy by BTSpaniel

echo Downloading Latest Build
powershell -Command "Invoke-WebRequest https://raw.githubusercontent.com/BTSpaniel/POELFI/master/POEFilter.bat -OutFile POEFILTER.bat

CLS
goto menu

:menu
FOR /F "tokens=3 delims= " %%G IN ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') DO (SET docsdir=%%G)
rem %SystemRoot%\explorer.exe "%docsdir%\My Games\Path of Exile\"
cd /d "%docsdir%\My Games\Path of Exile\"
echo Install Directory: %cd%
echo =====================
echo POE FILTER MENU v2017/07/15 1PM
echo =====================
echo Press The Number you want and press ENTER
echo =====================
echo 1 = One Filter to Rule Them All v2.6.1
echo 2 = NeverSink v4.72
echo 3 = GG-LootFilter v2.6.2
echo 9 = POE Filter Directory
echo 0 = Install All Filters
SET /P MCheck=:
IF ERRORLEVEL 1 SET MCheck=menu
IF %MCheck% == 1 goto Filter1
IF %MCheck% == 2 goto Filter2
IF %MCheck% == 3 goto Filter3
IF %MCheck% == 9 goto InstallDir
IF %MCheck% == 0 goto InstallAll
IF %MCheck% == menu goto menu
CLS

:error
echo A Error Happened!
echo Closing!
timeout >nul 3
exit

:Filter1
CLS
echo Installing One Filter to Rule Them All
echo Status: Updating Filter
echo Downloading The ONLY Filter!
powershell -Command "Invoke-WebRequest http://www.thiessen.im/PoE/oftrta_v2.6.1.filter -OutFile oftrta.filter
echo Download Complete!
timeout>nul 3
CLS
start "" https://www.pathofexile.com/forum/view-thread/1259059
goto menu

:Filter2
CLS
echo Installing NeverSink
echo Status: Updating Filter
echo Downloading Regular
powershell -Command "Invoke-WebRequest https://goo.gl/qWf8fT -OutFile NeverSink-R.filter
echo Downloading Semi-Strict
powershell -Command "Invoke-WebRequest https://goo.gl/hizUg7 -OutFile NeverSink-Semi-Strict.filter
echo Downloading Strict
powershell -Command "Invoke-WebRequest https://goo.gl/d8xmZA -OutFile NeverSink-Strict.filter
echo Downloading Very Strict
powershell -Command "Invoke-WebRequest https://goo.gl/r7Azwh -OutFile NeverSink-Very-Strict.filter
echo Downloading Uber Strict
powershell -Command "Invoke-WebRequest https://goo.gl/t8ibjB -OutFile NeverSink-Uber-Strict.filter
echo Download Complete!
timeout>nul 3
CLS
start "" https://www.pathofexile.com/forum/view-thread/1246208
goto menu

:Filter3
CLS
echo Installing GG-LootFilter
echo Status: Updating Filter
echo Downloading MF
powershell -Command "Invoke-WebRequest https://goo.gl/yuEG5r -OutFile GG-MF.filter
echo Downloading Endgame
powershell -Command "Invoke-WebRequest https://goo.gl/NWcrJE -OutFile GG-Endgame.filter
echo Downloading Leveling Caster
powershell -Command "Invoke-WebRequest https://goo.gl/FyEDAc -OutFile GG-Leveling-Caster.filter
echo Downloading Leveling
powershell -Command "Invoke-WebRequest https://goo.gl/Vz3FLD -OutFile GG-Leveling.filter
echo Download Complete!
timeout>nul 3
CLS
start "" https://www.pathofexile.com/forum/view-thread/1566921
goto menu

:InstallDir
%SystemRoot%\explorer.exe "%docsdir%\My Games\Path of Exile\"
CLS
goto menu


:InstallAll
CLS
echo Installing One Filter to Rule Them All
echo Status: Updating Filter
echo Downloading The ONLY Filter!
powershell -Command "Invoke-WebRequest http://www.thiessen.im/PoE/oftrta_v2.6.1.filter -OutFile oftrta.filter
echo Download Complete!
echo Installing NeverSink
echo Status: Updating Filter
echo Downloading Regular
powershell -Command "Invoke-WebRequest https://goo.gl/qWf8fT -OutFile NeverSink-R.filter
echo Downloading Semi-Strict
powershell -Command "Invoke-WebRequest https://goo.gl/hizUg7 -OutFile NeverSink-Semi-Strict.filter
echo Downloading Strict
powershell -Command "Invoke-WebRequest https://goo.gl/d8xmZA -OutFile NeverSink-Strict.filter
echo Downloading Very Strict
powershell -Command "Invoke-WebRequest https://goo.gl/r7Azwh -OutFile NeverSink-Very-Strict.filter
echo Downloading Uber Strict
powershell -Command "Invoke-WebRequest https://goo.gl/t8ibjB -OutFile NeverSink-Uber-Strict.filter
echo Download Complete!
echo Installing GG-LootFilter
echo Status: Updating Filter
echo Downloading MF
powershell -Command "Invoke-WebRequest https://goo.gl/yuEG5r -OutFile GG-MF.filter
echo Downloading Endgame
powershell -Command "Invoke-WebRequest https://goo.gl/NWcrJE -OutFile GG-Endgame.filter
echo Downloading Leveling Caster
powershell -Command "Invoke-WebRequest https://goo.gl/FyEDAc -OutFile GG-Leveling-Caster.filter
echo Downloading Leveling
powershell -Command "Invoke-WebRequest https://goo.gl/Vz3FLD -OutFile GG-Leveling.filter
echo Download Complete!
start "" https://www.pathofexile.com/forum/view-thread/1259059
start "" https://www.pathofexile.com/forum/view-thread/1246208
start "" https://www.pathofexile.com/forum/view-thread/1566921
timeout>nul 3
CLS
goto menu
