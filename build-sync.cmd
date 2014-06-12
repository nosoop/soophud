:: soophud build command script
:: Bundles all the HUD files into one folder, allowing you to copy them into tf/custom to view changes.
::
:: Requires post-build-sync.cmd.

@ECHO OFF

:: Copy each directory into one.
FOR /D %%D IN (*) DO (
    ECHO Copying %%D to soop_hud_all.
    XCOPY "%%~fD" ".\soop_hud_all\" /S > NUL
)
ECHO.

:: Run sync script.
:: You'll want to add a batch file that copies the soop_hud_all directory to tf/custom.
IF EXIST post-build-sync.cmd CALL post-build-sync.cmd

:: Clean up temporary directory.
ECHO Cleaning up temporary files.
RMDIR /S /Q ".\soop_hud_all"
ECHO.

:DONE
ECHO Press any key to quit.
PAUSE>NUL