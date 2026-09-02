REM EDHM Uninstaller

tasklist /fi "IMAGENAME eq EliteDangerous64.exe" 2>NUL | find /I /N "EliteDangerous64.exe">NUL
if "%ERRORLEVEL%"=="0" (
msg * Program is running. You can only uninstall EDHM when Elite is not running.
goto Exit
)
else if "%ERRORLEVEL%"=="1" (
del d3d11.dll
del d3d11_log.txt
del d3d11_profile_log.txt

del d3dcompiler_46.dll
del d3dcompiler_46_log.txt

del d3dcompiler_47.dll
del d3dcompiler_47_log.txt

del nvapi64.dll
del nvapi_log.txt

del d3dx.ini
del ShaderUsage.txt

rmdir /s /q ShaderFixes
rmdir /s /q EDHM-ini
rmdir /s /q ShaderCache

del EDHM-Uninstall.bat
)


