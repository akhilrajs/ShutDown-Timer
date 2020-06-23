cls
@echo off
title ShutDown Timer
color 0a 

:main
echo #         THE SHUTDOWN TIMER 
ping -n 1 127.0.0.1 > NUL 2>&1
echo #                 authour 
ping -n 1 127.0.0.1 > NUL 2>&1
echo #                          akhil raj s 
ping -n 1 127.0.0.1 > NUL 2>&1
echo # This is a program to shutdown the computer 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # with a set up timer 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # just type help for more info
ping -n 1 127.0.0.1 > NUL 2>&1  
echo.
ping -n 1 127.0.0.1 > NUL 2>&1 
echo.
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # enter the unit of time in which you want to 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # shutdown the computer 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo #
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # so in what units du you want to input the time 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo.
ping -n 1 127.0.0.1 > NUL 2>&1 
cmdMenuSel f870 "#  SECONDS" "#  MINUTES" "#  HOURS" "#  EXIT"
if %ERRORLEVEL% == 1 goto Seconds
if %ERRORLEVEL% == 2 goto Minutes
if %ERRORLEVEL% == 3 goto Hours
if %ERRORLEVEL% == 4 goto exit_


:exit_
exit


:Seconds
cls
title Seconds timer
ping -n 1 127.0.0.1 > NUL 2>&1 
echo #  Seconds timer 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo #  
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # Enter the time below in seconds and the
ping -n 1 127.0.0.1 > NUL 2>&1  
echo # computer will shutdown after that
ping -n 1 127.0.0.1 > NUL 2>&1  
echo.
set /p "time_sec=# enter the time here in seconds >"
cls
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # timer is in seconds mode
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the time entered for setting timer is %time_sec%
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the computer is set to shutdown after %time_sec% seconds
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # pls make sure the entered data is correct
ping -n 1 127.0.0.1 > NUL 2>&1 
cmdMenuSel f870 "#  YES" "#  NO"
if %ERRORLEVEL% == 1 goto shutdown_seconds
if %ERRORLEVEL% == 2 goto Seconds
:shutdown_seconds
cls
title setting timer in seconds
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the timer is been set for %time_sec% seconds
ping -n 1 127.0.0.1 > NUL 2>&1 
shutdown -s -t %time_sec% 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the timer is set
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the computer will shutdown after %time_sec%
ping -n 1 127.0.0.1 > NUL 2>&1 
echo this program will close now
timeout 6 
exit


:Minutes
cls
title Minutes timer
ping -n 1 127.0.0.1 > NUL 2>&1 
echo #  Minutes timer 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo #  
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # Enter the time below in Minutes and the
ping -n 1 127.0.0.1 > NUL 2>&1  
echo # computer will shutdown after that
ping -n 1 127.0.0.1 > NUL 2>&1  
echo.
set /p "time_mins=# enter the time here in Minutes >"
cls
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # timer is in Minute mode
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the time entered for setting timer is %time_mins% minutes
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the computer is set to shutdown after %time_mins% Minutes
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # pls make sure the entered data is correct
ping -n 1 127.0.0.1 > NUL 2>&1 
cmdMenuSel f870 "#  YES" "#  NO"
if %ERRORLEVEL% == 1 goto shutdown_minutes
if %ERRORLEVEL% == 2 goto Minutes
:shutdown_minutes
cls
title setting timer in Minutes
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # converting minutes to seconds
ping -n 1 127.0.0.1 > NUL 2>&1
set /a time_mins_secs = (time_mins*60)
ping -n 1 127.0.0.1 > NUL 2>&1
echo # the time in seconds is %time_mins_secs%
ping -n 1 127.0.0.1 > NUL 2>&1
echo # the timer is been set for %time_mins% Minutes
ping -n 1 127.0.0.1 > NUL 2>&1
shutdown -s -t %time_mins_secs% 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the timer is set
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the computer will shutdown after %time_mins% minutes
ping -n 1 127.0.0.1 > NUL 2>&1 
echo this program will close now
timeout 6 
exit

:Hours
cls
title Hours timer
ping -n 1 127.0.0.1 > NUL 2>&1 
echo #  Hours timer 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo #  
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # Enter the time below in Hours and the
ping -n 1 127.0.0.1 > NUL 2>&1  
echo # computer will shutdown after that
ping -n 1 127.0.0.1 > NUL 2>&1  
echo.
set /p "time_hours=# enter the time here in hours >"
cls
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # timer is in hour mode
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the time entered for setting timer is %time_hours% hours
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the computer is set to shutdown after %time_hours% hours
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # pls make sure the entered data is correct >
ping -n 1 127.0.0.1 > NUL 2>&1 
cmdMenuSel f870 "#  YES" "#  NO"
if %ERRORLEVEL% == 1 goto shutdown_hours
if %ERRORLEVEL% == 2 goto Hours
:shutdown_hours
cls
title setting timer in Hours
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # converting hours to seconds
ping -n 1 127.0.0.1 > NUL 2>&1
set /a time_hours_secs = (time_mins*3600)
ping -n 1 127.0.0.1 > NUL 2>&1
echo # the time in seconds is %time_hours_secs%
ping -n 1 127.0.0.1 > NUL 2>&1
echo # the timer is been set for %time_hours% hours
ping -n 1 127.0.0.1 > NUL 2>&1
shutdown -s -t %time_hours_secs% 
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the timer is set
ping -n 1 127.0.0.1 > NUL 2>&1 
echo # the computer will shutdown after %time_hours% hours
ping -n 1 127.0.0.1 > NUL 2>&1 
echo this program will close now
timeout 6
exit

