wget "http://downloads.sourceforge.net/project/fbc/Binaries%20-%20Linux/FreeBASIC-1.05.0-linux-x86.tar.gz?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Ffbc%2Ffiles%2FBinaries%2520-%2520Linux%2F&ts=1475949992&use_mirror=pilotfiber";
mv FreeBASIC* FreeBASIC.tar.gz;
tar -xvzf FreeBASIC.tar.gz;
mv FreeBASIC-1.05.0-linux-x86 FreeBASIC;
./FreeBASIC/bin/fbc krnl_linux.bas;
