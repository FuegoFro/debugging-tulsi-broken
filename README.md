## Basic debugging not working in Tulsi

I created and generated a simple Xcode project (checked in) from HEAD of Tulsi (Version 0.4.155646550.20170510).

With Xcode 8.3.2, when running in Debug and a breakpoint on line 7 of "Sources/Public/Simple.m", the breakpoint is not hit

1. In lldbinit mode (without dsym) (default)

Even after building, turning off the breakpoint, restarting xcode, then turning it back on and rebuilding.

2. With the dwarfpatcher (with dsym)

![export TULSI_USE_DSYM=YES](img/runscript.png)

In both cases, if I press pause and inspect breakpoints in lldbinit, this breakpoint is not associated with a particular file.

![breakpoint pending](img/pendingbp.png)

