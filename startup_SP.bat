@echo off
color a
set scriptversion=v1.1
Title Windows 8/8.1/10 ENBSeries 0.248 compatibility script %scriptversion% 

echo.
echo  .:[ Windows 8/8.1/10 ENBSeries 0.248 startup utility %scriptversion% ]:.
echo                  .:[ Authors: Youtuber ]:.
echo                .:[ Exclusive for GTA SA ]:.
echo.

REM Gets the SID of the current logged in user, needed for wiping the registry values which cause issues with ENB 0.248

for /f "delims=" %%i in ('wmic useraccount where "name='%UserName%'" get sid /value') do (
  for /f "delims=" %%j in ("%%i") do set "%%j"
)

REM Sets batch file dir as working directory, since batch files ran as admin use system32 by default

pushd %~dp0 >nul 2>&1

REM Checks existance of problematic registry keys and deletes them thereafter, plus giving out proper message.

REG Query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" >nul 2>&1
if %errorlevel%==0 ( 
	REG Delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
	echo. [startup util] Registry entry successfully deleted!
) else (
	echo. [startup util] Registry entry not found, skipping. 
) 

REG Query "HKEY_USERS\%SID%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore" >nul 2>&1
if %errorlevel%==0 ( 
	REG Delete "HKEY_USERS\%SID%\Software\Microsoft\Internet Explorer\LowRegistry\Audio\PolicyConfig\PropertyStore" /f
	echo. [startup util] Registry entry successfully deleted!
) else (
	echo. [startup util] Registry entry not found, skipping. 
) 

REG Query "HKEY_USERS\%SID%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" >nul 2>&1
if %errorlevel%==0 ( 
	REG Delete "HKEY_USERS\%SID%\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /f
	echo. [startup util] Registry entry successfully deleted!
) else (
	echo. [startup util] Registry entry not found, skipping. 
) 

REG Query "HKEY_USERS\%SID%_Classes\VirtualStore\MACHINE\SOFTWARE\Wow6432Node\Microsoft\Direct3D\MostRecentApplication" >nul 2>&1
if %errorlevel%==0 ( 
	REG Delete "HKEY_USERS\%SID%_Classes\VirtualStore\MACHINE\SOFTWARE\Wow6432Node\Microsoft\Direct3D\MostRecentApplication" /f
	echo. [startup util] Registry entry successfully deleted!
) else (
	echo. [startup util] Registry entry not found, skipping. 
) 

REG Query "HKEY_USERS\%SID%_Classes\VirtualStore\MACHINE\SOFTWARE\Wow6432Node\Microsoft\DirectDraw\MostRecentApplication" >nul 2>&1
if %errorlevel%==0 ( 
	REG Delete "HKEY_USERS\%SID%_Classes\VirtualStore\MACHINE\SOFTWARE\Wow6432Node\Microsoft\DirectDraw\MostRecentApplication" /f
	echo. [startup util] Registry entry successfully deleted!
) else (
	echo. [startup util] Registry entry not found, skipping. 
) 

REM Finally starts the GTA SA exe file after everything is done.

echo. [startup util] Done. Starting Grand Theft Auto: San Andreas
start gta_sa.exe
pause
