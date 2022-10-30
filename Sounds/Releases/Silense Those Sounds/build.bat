@echo off
setlocal EnableDelayedExpansion

if exist /AUDIO (
	echo You have a folder called "AUDIO" on the
	echo root level of your drive. This build
	echo process requires the use of that folder
	echo in order to run properly. Plus, it is
	echo designed to delete the "AUDIO" folder when
	echo it's done. I don't want to delete your files.
	echo Please move, rename, or delete that folder and try again.
	pause
	rem exit
)

set idf=files\_ids_ex.txt

for /f "tokens=2" %%o in ('findstr "##total=" %idf%') do set max=%%o
set /a done=%max%+1

for /l %%i in (1,1,%max%) do (
	for /f "tokens=2,3*" %%j in ('findstr "#%%i#" %idf%') do (
		set ww[%%i]=%%j
		if "%%l"=="" (
			set "transcript[%%i]=%%j"
		) else (
			set "transcript[%%i]=%%l"
		)
	)
	set enabled[%%i]=Enabled
)

:menu
cls
echo.
echo.
echo  Toggle the audio on or off from the list
echo  below by pressing the corresponding number
echo  on your keyboard followed by Enter:
echo.
echo  Precede your choice with a plus sign 
echo  to hear an audio sample in English
echo  (like this: +2)
echo.
echo.

for /l %%i in (1,1,%max%) do (
	echo  [%%i] [!enabled[%%i]!] !transcript[%%i]!
)

echo.
echo  [%done%] Done
echo.
set /p selection=

if %selection%==UUDDLRLRBAS (
	for /l %%i in (1,1,%max%) do (
		set enabled[%%i]=Disabled
	)
)


if %selection:~0,1%==+ (
	files\oggdec.exe -p files\samples\!ww[%selection:~1%]!
) else (
	if %selection%==%done% (
		goto finish
	) else (
		if !enabled[%selection%]!==Enabled (
			set enabled[%selection%]=Disabled
		) else (
			set enabled[%selection%]=Enabled
		)
	)
)

goto menu

:finish

set changed=false

xcopy /e /i /y files\AUDIO \AUDIO

for /l %%i in (1,1,%max%) do (
	if !enabled[%%i]!==Disabled (
		 for /d %%d in (files\AUDIO\*.*) do (        
			 for /f "tokens=1" %%v in ('findstr "!ww[%%i]!" "%%d\VOCAL_LOCALISED.TXT"') do set "id=%%v"
			 set od=%%d
			 echo !od!
			 echo !od:~5!\!id!.WEM
			 echo !ww[%%i]!> !od:~5!\!id!.WEM
		 )
		 set changed=true
	   )
)

if %changed%==false (
	echo You didn't disable anything
	echo.
	pause
	rmdir /s /q \AUDIO
)

files\psarc.exe --xml=files\create.xml
rmdir /s /q \AUDIO
pause