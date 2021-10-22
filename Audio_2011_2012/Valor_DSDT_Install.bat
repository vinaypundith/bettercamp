@echo Installing DSDT.AML Process (Once Window Pop-Up and Closes Continue by pressing any key)

powershell -command "Start-Process %SYSTEMDRIVE%\Valor\ASL_CMD.cmd -Verb runas"

pause:

@echo done

@echo BCDEdit Testsigning On Process to Enable Audio Drivers (Once Window Pop-Up and Closes Continue by pressing any key)

powershell -command "Start-Process %SYSTEMDRIVE%\Valor\BCDEdit_CMD.cmd -Verb runas"

pause:

@echo done

@echo Schedule Tasks Copied

Copy "%SYSTEMDRIVE%\Users\%USERNAME%\Downloads\Valor_Lite-(Dont-Delete-Backup)\Scripts\Scheduled_Tasks\Scheduled_Tasks_Startup.bat" "%SYSTEMDRIVE%\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Scheduled_Tasks_Startup.bat"

DEL /f "%SYSTEMDRIVE%\Users\%USERNAME%\Downloads\Valor_Lite-(Dont-Delete-Backup)\Scripts\Scheduled_Tasks\Scheduled_Tasks_Startup.bat"

Pause:

@echo done


@echo SHUT DOWN PROCESS BEGINS NOW IN 30 Seconds, SAVE YOUR PROGRESS IF YOU NEEDED, REBOOT ANYTIME MANUALLY IF YOU WANT.

shutdown /r

pause:

@echo done