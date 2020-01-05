@echo off
echo ====================================================
echo  Example of usage... :)
echo  Enter executable path: C:\Program Files\HxD\HxD.exe
echo  Enter your program's name:  HxD
echo ====================================================
echo.
set /p exepath=Enter executable path: 
set /p programName=Enter your program's name: 
 
rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with %programName%"         /t REG_SZ /v "" /d "Open with %programName%"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with %programName%"         /t REG_EXPAND_SZ /v "Icon" /d "%exepath%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Open with %programName%\command" /t REG_SZ /v "" /d "%exepath% \"%%1\"" /f
 
rem add it for folders
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with %programName%"         /t REG_SZ /v "" /d "Open with %programName%"   /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with %programName%"         /t REG_EXPAND_SZ /v "Icon" /d "%exepath%,0" /f
@reg add "HKEY_CLASSES_ROOT\Folder\shell\Open with %programName%" /t REG_SZ /v "" /d "%exepath% \"%%1\"" /f
pause
