:: soophud build command script
:: Invokes VPK on each directory, creating one VPK file per directory.
::
:: Add an post-install.cmd file to do stuff.

@ECHO OFF

:: Set the path to VPK for this session if supplied.
IF EXIST soophud-build-filepaths.cmd CALL soophud-build-filepaths.cmd

:: Check if the VPK executable is in the executable path.
VPK 2>&1> NUL
IF %ERRORLEVEL%==9009 (
    ECHO Could not find VPK executable.
    ECHO Please add the path containing it to the PATH environment variable.
    ECHO.
    ECHO The executable for TF2 can be found at:
    ECHO ...\Steam\steamapps\common\Team Fortress 2\bin
    ECHO.
    GOTO DONE
)

ECHO.

:: Pack each directory into its own VPK file, removing previous VPK file if any.
FOR /D %%D IN (*) DO (
    ECHO Building %%D.
    IF EXIST %%D.vpk REM %%D.vpk
    VPK "%%~fD"
    REN "%%D.vpk" "%%D.vpk"
    ECHO.
)

:: Run post-install script to copy VPK files or whatever.
IF EXIST post-install.cmd CALL post-install.cmd

:DONE
ECHO Press any key to quit.
PAUSE>NUL