Echo OFF
TITLE Path of Exile Filter Scraper
timeout 3 >nul
CLS
echo Grabbing URLs
echo =====================
start call fixer.bat
timeout 3 >nul
CLS
echo Extracting Urls
echo =====================
start call extractor.bat
timeout 3 >nul
CLS
echo Extracting Latest oftrta Version
echo =====================
start call in.bat
timeout 3 >nul
CLS
echo Grabbing File Names
echo =====================
start call in2.bat
timeout 3 >nul
CLS
echo Grabbing URLs
echo =====================
start call in3.bat
timeout 3 >nul
CLS