@ECHO OFF
REM Batch fil to copy files for OpenCPN Debug and Release in VC10 Win32
REM Run from dir OpenCPN.GIT or whatever root of the git files
rem Type C:\Builds\OpenCPN\CopyFiles.txt
ECHO ....................................................................
ECHO CopyFiles.bat
ECHO Batch file to copy files for OpenCPN Debug and Release in VC13 Win32
ECHO Run it from directory OpenCPN.GIT or whatever root of the source files
ECHO Only not existing or newer files will be copied.
ECHO ....................................................................
ECHO . 
Pause
::ECHO ON
Echo:
Echo Debug files:
::if not exist build\gshhs md build\gshhs
::xcopy data\gshhs\*.* build\gshhs\ /D /S /I /F /Y
::if not exist build\s57data md build\s57data
::xcopy data\s57data\*.* build\s57data\ /D /S /I /F /Y
::if not exist build\tcdata md build\tcdata
::xcopy data\tcdata\*.* build\tcdata\ /D /S /I /F /Y

xcopy data\*.* build\ /D /S /I /F /Y


if not exist build\uidata md build\uidata
xcopy src\bitmaps\*.png build\uidata\ /D /S /E /I /F /Y
xcopy src\bitmaps\styles.xml build\uidata\ /D /S /I /F /Y
xcopy data\svg\*.* build\uidata\ /D /S /I /F /Y
::Seems to be needed.
xcopy buildwin\*.* build\Debug\ /D /S /I /F /Y
xcopy buildwin\vc\*.* build\Debug\ /D /S /E /I /F /Y
xcopy buildwin\gtk\*.* build\Debug\ /D /S /E /I /F /Y
xcopy buildwin\zlib1.dll build\Debug\ /D /S /E /I /F /Y
xcopy buildwin\expat-2.2.5\expat.dll build\Debug\ /D /S /E /I /F /Y
xcopy data\license.txt build\Debug\ /D /S /E /I /F /Y

xcopy data\license.txt build\Debug\ /D /S /E /I /F /Y
if not exist build\share md build\share
xcopy "C:\Program Files (x86)\OpenCPN\share"\*.* build\share\ /D /S /I /F /Y

Echo:
Echo Release files:
if not exist build\Release md build\Release
if not exist build\Release\uidata md build\Release\uidata
xcopy src\bitmaps\*.png build\Release\uidata\ /D /S /E /I /F /Y
xcopy src\bitmaps\styles.xml build\Release\uidata\ /D /S /I /F /Y

::xcopy data\svg\*.* build\Release\uidata\ /D /S /I /F /Y
::xcopy data\gshhs\*.* build\Release\gshhs\ /D /S /I /F /Y
::if not exist build\Release\s57data md build\Release\s57data
::xcopy data\s57data\*.* build\Release\s57data\ /D /S /I /F /Y
::if not exist build\Release\tcdata\ md build\Release\tcdata\
::xcopy data\tcdata\*.* build\Release\tcdata\ /D /S /E /I /F /Y

xcopy data\*.* build\Release\ /D /S /I /F /Y

xcopy buildwin\*.* build\Release\ /D /S /I /F /Y
xcopy buildwin\vc\*.* build\Release\ /D /S /E /I /F /Y
xcopy buildwin\gtk\*.* build\Release\ /D /S /E /I /F /Y
xcopy buildwin\zlib1.dll build\Release\ /D /S /E /I /F /Y
xcopy buildwin\expat-2.2.5\expat.dll build\Release\ /D /S /E /I /F /Y
xcopy data\license.txt build\Release\ /D /S /E /I /F /Y
xcopy data\license.txt build\Release\ /D /S /E /I /F /Y


::xcopy buildwin\crashrpt\*.dll build\Release\ /D /S /I /F /Y
::xcopy buildwin\crashrpt\CrashSender*.exe build\Release\ /D /S /I /F /Y
::xcopy buildwin\crashrpt\crashrpt_lang.ini build\Release\ /D /S /I /F /Y
Echo:

GOTO End
::C:\Builds\OCPN\OpenCPN\build\RelWithDebInfo
Echo RelWithDebInfo files:
if not exist build\Release md build\RelWithDebInfo
if not exist build\Release\uidata md build\RelWithDebInfo\uidata
xcopy src\bitmaps\*.png build\RelWithDebInfo\uidata\ /D /S /E /I /F /Y
xcopy src\bitmaps\styles.xml build\RelWithDebInfo\uidata\ /D /S /I /F /Y

xcopy data\*.* build\RelWithDebInfo\ /D /S /I /F /Y

xcopy buildwin\*.* build\RelWithDebInfo\ /D /S /I /F /Y
xcopy buildwin\vc\*.* build\RelWithDebInfo\ /D /S /E /I /F /Y
xcopy buildwin\gtk\*.* build\RelWithDebInfo\ /D /S /E /I /F /Y
xcopy buildwin\zlib1.dll build\RelWithDebInfo\ /D /S /E /I /F /Y
xcopy buildwin\expat-2.2.5\expat.dll build\RelWithDebInfo\ /D /S /E /I /F /Y
xcopy data\license.txt build\RelWithDebInfo\ /D /S /E /I /F /Y
xcopy data\license.txt build\RelWithDebInfo\ /D /S /E /I /F /Y

:End
