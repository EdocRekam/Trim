#!/bin/sh
export LIB='/c/Program Files (x86)/Microsoft SDKs/Windows/v7.1A/Lib/x64'
echo $LIBPATH
nasm -f win64 trim.s
'/c/Program Files (x86)/Microsoft Visual Studio 14.0/VC/bin/x86_amd64/link.exe' /LARGEADDRESSAWARE:NO /MACHINE:X64 /SUBSYSTEM:Windows /ENTRY:_main kernel32.lib shell32.lib advapi32.lib shlwapi.lib user32.lib trim.obj 
