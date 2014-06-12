soophud
=======
A more minmode-y minmode HUD for TF2.

The goal of this HUD is to try to stick to the stock Team Fortress 2 styled display, while stripping things down a bit more.  It also intends to be modular, allowing you to add and remove any specific component easily.  Like the disguise menu but would rather have the default loadout screen (or did it cause a client crash with a new TF2 update)?  Just remove the VPK.

As such, and probably ironically, the modularized format of this HUD also might it incompatible with most other custom HUDs, as it does not touch `hudlayout.res` at all.  Things might work, but there's no guarantees.

And funnily enough, this HUD does not have a `cl_minmode`-enabled option; existing values have been left untouched.  If you've any suggestions, feel free to fork and push any changes.

Screenshots coming soon.


Available Components
--------------------
Titles have been taken out and margins have been decreased for a minimal experience.
  * `c_engineer_builddestroy` Build / destroy menus.
  * `c_engineer_ee_teleport` The Eureka Effect teleport UI.  Changed the build icon to a teleport exit.
  * `c_spy_disguise` The Spy's disguise menu.
  * `ui_backpack` Backpack screen.  Layout changing.  "Sort by" options removed, one single row of numbers.
  * `ui_damage_numbers` Not minimal, but large yellow text is more readable than stock.
  * `ui_loadout_panel` The class loadout screen.
  * `ui_numeric_health` Player health on mouseover and in killcam shots, placed in the lower right corner of the health cross.
  * `ui_spectator` Spectator screen, removed key text, spectator control and bottom gradient.


Download / Installation
-----------------------
Grab the download link for the most recent version by using the Download ZIP link at the bottom of the right-side panel or by using the same link [here](https://github.com/nosoop/soophud/archive/master.zip).

Installation methods can range from simple to slightly complicated, on Windows:
  * Simple: Copy and paste all the folders to your `/tf/custom` directory.  Pretty much the worst option by far -- you're adding each folder as a search path for custom files, and that will have some sort of performance impact to the game.
  * A little less simple: Add a `post-build-sync.cmd` file with the following to copy one folder containing all the files to your custom directory:
```
RMDIR "C:\path\to\tf\custom\soop_hud_all\resource\" /S /Q
XCOPY ".\soop_hud_all" "C:\path\to\tf\custom\soop_hud_all\" /S > NUL
```
  * ... one search path so it's not as large a performance hit, but no modularity.  For the most part, this method is meant to copy and test components on-the-fly.
  * Slightly complicated: Strip off the `-example` from `soophud-build-filepaths-example.cmd` (or copy the file) and fill in the path for `tf\bin`, then run either `build.cmd` to create individual VPKs for each component or `build-all.cmd` to bundle the entire HUD into one VPK, which you can then copy to your `tf\custom` directory.  Minimal performance hit and you can pick and choose which UI elements to use.

No friendly build scripts for other platforms, as I have no idea of their directory / path structure.


Modifications
-------------
If you want to patch another thing up to be cleaner, create a new, appropriately-named folder and drop whatever files you're modifying there.  Try to keep your modifications to the `resources\ui` directory.
