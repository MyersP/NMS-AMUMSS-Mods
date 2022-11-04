@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
 
REM Fix this do not like it.
REM Run this batch file to convert a directory named like "Small Refiner RAW", 
REM from a directory of game WEM files to one full of silent WEM files ready to include in a mode
REM For aach directory that is beside this batch file, with the pattern "Folder Name RAW"
REM The easiest way to launch this batch file is to type "cmd" in the folders address bar 
for /D %%G in ("*RAW") do (set str=%%G

REM Remove the RAW from the end
Call set str1=%%str:RAW=%% 

REM Trim the string that will now be used for as results directory "Silent Folder Name"
Call :Trim newDirectory !str1!
 
REM Post & Create "Silent Folder Name" directory
ECHO Creating directory "!newDirectory!"
if not exist "!newDirectory!" md "!newDirectory!"

REM Change context to the "Folder Name RAW" directory 
cd "%%G"

    REM Loop through all the files in the folder
    for /F %%f in ('dir /b') do ( set str3=%%f
        REM Strip the extention as the export tool does NOT do Upper case
        REM Now we have just the number of the old WEM file
        Call set str4=%%str3:.wem=%%
        
        REM Post & Create a WEM file with the same name as the original
        REM For the silent sound use the "1.WEM" file that should have accompanied this batch file.
        REM Suppress the normal response about creating a file  >NUL        
        ECHO Creating File "!str4!.WEM"
        COPY /y ..\1.WEM "..\!newDirectory!\!str4!.WEM" >NUL
                       
        REM Post and Create a tag file that helps identify what sound belongs to those numbers       
        ECHO Creating File "!str4!_!newDirectory!"        
        COPY /y NUL "..\!newDirectory!\!str4!_!newDirectory!" >NUL
        
    )
    REM Shift context back up to process any more RAW folder
    CD ..
)
 

:Trim
SetLocal EnableDelayedExpansion
set Params=%*
for /f "tokens=1*" %%a in ("!Params!") do EndLocal & set %1=%%b
:return