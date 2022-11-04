@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

Cd AUDIO

for /D %%G in (*.*) do (set str=%%G
CD "%%G"

Del Manifest.txt >NUL
Del ../Manifest.txt >NUL
Del ../../Manifest.txt >NUL

ECHO List of Sounds Removed > ../../Manifest.txt

    for /F "delims=" %%f in ('dir /b') do ( set str=%%f
        Call set str1=%%str:WEM= %%
        if NOT "!str!" == "Space_To_Underscore.bat" (
            if NOT "!str!" == "Manifest.txt" (

                if /I "!str1!" == "!str!" (
                
                    Call set str2=%%str: =_%% 
                    
                    Call set str3=%%str2:.txt= %%
                    
                     ECHO Adding !str3! To manifest
                    
                   ECHO !str3! >> ../../Manifest.txt
                )
            )
        )
    )
REM CD ..
)

echo "(1000000\d|100000[1-9]\d|10000[1-9]\d{2}|1000[1-9]\d{3}|100[1-9]\d{4}|10[1-9]\d{5}|1[1-9]\d{6}|[2-9]\d{7}|[1-9]\d{8,9})_"
Pause