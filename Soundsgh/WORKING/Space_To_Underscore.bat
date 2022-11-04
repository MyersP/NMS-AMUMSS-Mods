@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION



for /D %%G in (*.*) do (set str=%%G
CD "%%G"
Del Manifest.txt >NUL
ECHO List of Sounds > Manifest.txt
    for /F "delims=" %%f in ('dir /b') do ( set str=%%f
        Call set str1=%%str:WEM= %%
        if NOT "!str!" == "Space_To_Underscore.bat" (
            if NOT "!str!" == "Manifest.txt" (
            
                    ECHO 1 = !str1!
                    ECHO 2 = !str!
                    
                if /I "!str1!" == "!str!" (
                
                    Call set str2=%%str: =_%% 
                    
                    Call set str3=%%str2:.txt= %%
                    
                    ECHO Org Name = !str!
                    ECHO New Name = !str3!
                    REM ren "!str!" "!str3!"
                    ECHO !str3! >> Manifest.txt
                )
            )
        )
    )
CD ..
)
Pause