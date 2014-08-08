@echo off
:menu
echo.
echo 1 - Start
echo 2 - Stop
echo 3 - Restart
echo.
echo 0 - Configure
echo.

set /p choice=Choose operation [0-9]: 
if %choice%==1 goto :hstart
if %choice%==2 goto :hstop
if %choice%==3 goto :hrestart
if %choice%==0 goto :hconfig

:hstart
netsh wlan start hostednetwork
pause
cls
goto :menu

:hstop
netsh wlan stop hostednetwork
pause
cls
goto :menu

:hrestart
netsh wlan stop hostednetwork
netsh wlan start hostednetwork
pause
cls
goto :menu

:hconfig
netsh wlan set hostednetwork mode=allow ssid="SET NAME" key="SET KEY" keyUsage=persistent
pause
cls
goto :menu