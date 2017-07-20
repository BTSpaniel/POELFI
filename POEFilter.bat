@Echo OFF
TITLE LAZY POE Filter Downloader
echo Made Easy by BTSpaniel

echo Loading Config

set Dev=0

set OFTRTA="http://www.thiessen.im/PoE/oftrta_v2.6.1.filter"
rem Using Google links because Batches cannot contain Apostrophe or Percent signs without being part of the code.
set Neversink-reg="https://goo.gl/qWf8fT"
set Neversink-sstrict="https://goo.gl/hizUg7"
set Neversink-strict="https://goo.gl/d8xmZA"
set Neversink-vstrict="https://goo.gl/r7Azwh"
set Neversink-uber="https://goo.gl/t8ibjB"
set GG-MF="https://goo.gl/yuEG5r"
set GG-END="https://goo.gl/NWcrJE"
set GG-LC="https://goo.gl/FyEDAc"
set GG-L="https://goo.gl/Vz3FLD"

IF %Dev%==1 (
Echo One Filter
echo %OFTRTA% Loaded
Echo NeverSink
echo %NeverSink-reg% Loaded
echo %Neversink-sstrict% Loaded
echo %Neversink-strict% Loaded
echo %Neversink-vstrict% Loaded
echo %Neversink-uber% Loaded
Echo GG
echo %GG-MF% Loaded
echo %GG-END% Loaded
echo %GG-LC% Loaded
echo %GG-L% Loaded
)

IF NOT %Dev%==1 (
powershell -Command Invoke-WebRequest https://raw.githubusercontent.com/BTSpaniel/POELFI/master/POEFilter.bat -OutFile POEFILTER.bat
echo Downloading Latest Build
)
IF %Dev%==1 (
Echo Paused: Dev Mode Enabled
Pause
)
CLS
goto menu

:menu
FOR /F "tokens=3 delims= " %%G IN ('REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal"') DO (SET docsdir=%%G)
rem %SystemRoot%\explorer.exe "%docsdir%\My Games\Path of Exile\"
cd /d "%docsdir%\My Games\Path of Exile\"
IF %Dev%==1 Echo Dev Mode Enabled
echo Install Directory: %cd%
echo =====================
echo POE FILTER MENU v2017/07/20 6AM
echo =====================
echo Press The Number you want and press ENTER
echo =====================
echo 1 = One Filter to Rule Them All
echo 2 = NeverSink
echo 3 = GG-LootFilter
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
powershell -Command Invoke-WebRequest "%OFTRTA%" -OutFile oftrta.filter
echo Download Complete!
timeout>nul 3
IF %Dev%==1 Pause
CLS
IF NOT %Dev%==1 (
start "" https://www.pathofexile.com/forum/view-thread/1259059
)
goto menu

:Filter2
CLS
echo Installing NeverSink
echo Status: Updating Filter
echo Downloading Regular
powershell -Command Invoke-WebRequest %Neversink-reg% -OutFile NeverSink-R.filter
echo Downloading Semi-Strict
powershell -Command Invoke-WebRequest %Neversink-sstrict% -OutFile NeverSink-Semi-Strict.filter
echo Downloading Strict
powershell -Command Invoke-WebRequest %Neversink-strict% -OutFile NeverSink-Strict.filter
echo Downloading Very Strict
powershell -Command Invoke-WebRequest %Neversink-vstrict% -OutFile NeverSink-Very-Strict.filter
echo Downloading Uber Strict
powershell -Command Invoke-WebRequest %Neversink-uber% -OutFile NeverSink-Uber-Strict.filter
echo Download Complete!
timeout>nul 3
IF %Dev%==1 Pause
CLS
IF NOT %Dev%==1 (
start "" https://www.pathofexile.com/forum/view-thread/1246208
)
goto menu

:Filter3
CLS
echo Installing GG-LootFilter
echo Status: Updating Filter
echo Downloading MF
powershell -Command Invoke-WebRequest %GG-MF% -OutFile GG-MF.filter
echo Downloading Endgame
powershell -Command Invoke-WebRequest %GG-END% -OutFile GG-Endgame.filter
echo Downloading Leveling Caster
powershell -Command Invoke-WebRequest %GG-LC% -OutFile GG-Leveling-Caster.filter
echo Downloading Leveling
powershell -Command Invoke-WebRequest %GG-L% -OutFile GG-Leveling.filter
echo Download Complete!
timeout>nul 3
IF %Dev%==1 Pause
CLS
IF NOT %Dev%==1 (
start "" https://www.pathofexile.com/forum/view-thread/1566921
)
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
powershell -Command Invoke-WebRequest %OFTRTA% -OutFile oftrta.filter
echo Download Complete!
echo Installing NeverSink
echo Status: Updating Filter
echo Downloading Regular
powershell -Command Invoke-WebRequest %Neversink-reg% -OutFile NeverSink-R.filter
echo Downloading Semi-Strict
powershell -Command Invoke-WebRequest %Neversink-sstrict% -OutFile NeverSink-Semi-Strict.filter
echo Downloading Strict
powershell -Command Invoke-WebRequest %Neversink-strict% -OutFile NeverSink-Strict.filter
echo Downloading Very Strict
powershell -Command Invoke-WebRequest %Neversink-vstrict% -OutFile NeverSink-Very-Strict.filter
echo Downloading Uber Strict
powershell -Command Invoke-WebRequest %Neversink-uber% -OutFile NeverSink-Uber-Strict.filter
echo Download Complete!
echo Installing GG-LootFilter
echo Status: Updating Filter
echo Downloading MF
powershell -Command Invoke-WebRequest %GG-MF% -OutFile GG-MF.filter
echo Downloading Endgame
powershell -Command Invoke-WebRequest %GG-END% -OutFile GG-Endgame.filter
echo Downloading Leveling Caster
powershell -Command Invoke-WebRequest %GG-LC% -OutFile GG-Leveling-Caster.filter
echo Downloading Leveling
powershell -Command Invoke-WebRequest %GG-L% -OutFile GG-Leveling.filter
echo Download Complete!
IF %Dev%==1 Pause
timeout>nul 3
CLS
IF NOT %Dev%==1 (
start "" https://www.pathofexile.com/forum/view-thread/1259059
start "" https://www.pathofexile.com/forum/view-thread/1246208
start "" https://www.pathofexile.com/forum/view-thread/1566921
)
goto menu
