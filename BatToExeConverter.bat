@echo off
setlocal

:: Get the current script's directory
set "currentDir=%~dp0"

:: Display the Banner
call :banner

:: Check if Bat To Exe Converter is present in the same directory
if not exist "%currentDir%BatToExeConverter.bat" (
    echo Bat To Exe Converter not found in the same directory as this script.
    echo Please make sure BatToExeConverter.bat is in the same folder as this script.
    pause > nul
    exit /b
)

:: Prompt user for the .bat file to convert
echo Please drag and drop your .bat file onto this script or enter the full path.
set /p "batFile=Enter path to your .bat file: "

:: Check if the file exists
if not exist "%batFile%" (
    echo The specified file does not exist. Please check the path.
    pause > nul
    exit /b
)

:: Prepare output EXE file path
set "exeFile=%currentDir%%~n1.exe"

:: Open Bat To Exe Converter with the selected .bat file
start "" "%currentDir%BatToExeConverter.bat" "%batFile%"

echo Conversion window opened. Please configure and convert your .bat file.
pause > nul
endlocal
goto :eof

:banner
echo ██████╗ █████╗████████████████╗██████╗█████████╗  █████████╗
echo ██╔══████╔══██╚══██╔══╚══██╔══██╔═══████╔════╚██╗██╔██╔════╝
echo ██████╔███████║  ██║     ██║  ██║   ███████╗  ╚███╔╝█████╗  
echo ██╔══████╔══██║  ██║     ██║  ██║   ████╔══╝  ██╔██╗██╔══╝  
echo ██████╔██║  ██║  ██║     ██║  ╚██████╔█████████╔╝ █████████╗
echo ╚═════╝╚═╝  ╚═╝  ╚═╝     ╚═╝   ╚═════╝╚══════╚═╝  ╚═╚══════╝
echo.
goto :eof
