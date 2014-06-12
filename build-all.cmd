:: soophud build command script
:: Bundles all the HUD files into soop_hud_all.vpk
::
:: Automatically install them by adding an post-build-all.cmd file that copies.

@ECHO OFF

:: Set the path to VPK for this session if supplied.
IF EXIST soophud-build-filepaths.cmd (
    CALL soophud-build-filepaths.cmd
)

:: Check if the VPK executable is in the executable path.
VPK 2>&1> NUL
IF %ERRORLEVEL%==9009 (
    ECHO Could not find VPK executable.
    ECHO Please add the path containing it to the PATH environment variable.
    ECHO.
    ECHO The executable for TF2 can be found at:
    ECHO ...\Steam\steamapps\common\Team Fortress 2\bin
    ECHO.
    ECHO.
    GOTO DONE
)
ECHO.

:: Copy each directory into one.
FOR /D %%D IN (*) DO (
    ECHO Copying %%D to soop_hud_all.
    XCOPY "%%~fD" ".\soop_hud_all\" /S > NUL
)
ECHO.

:: Remove an existing VPK if it exists.
IF EXIST soop_hud_all.vpk REM soop_hud_all.vpk

:: Build the single VPK file.
ECHO Building soop_hud_all VPK file.
VPK ".\soop_hud_all"
ECHO.

:: Run post-install script to copy VPK files or whatever.
:: This runs before cleanup in case you'd rather just copy those for live testing.
IF EXIST post-build-all.cmd CALL post-build-all.cmd

:: Clean up temporary directory.
ECHO Cleaning up temporary files.
RMDIR /S /Q ".\soop_hud_all"
ECHO.

:DONE
ECHO Press any key to quit.
PAUSE>NUL