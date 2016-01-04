cmake_minimum_required (VERSION 2.6)

# *****************************************************************************
# Project variables
# *****************************************************************************
set (PRJ_NAME trim)

# *****************************************************************************
# Suggested settings show in cmake-gui
# *****************************************************************************
set (CMAKE_C_STANDARD_LIBRARIES "kernel32.lib shell32.lib advapi32.lib shlwapi.lib" CACHE STRING "")
set (CMAKE_C_FLAGS "/DWIN32 /D_WINDOWS /W4 /DUNICODE /D_UNICODE" CACHE STRING "")
set (CMAKE_CONFIGURATION_TYPES Debug Release CACHE STRING "")

#
# Add WIN32 executable
#
project (${PRJ_NAME})
file(GLOB_RECURSE sources *.c *.h)
add_executable(${PRJ_NAME} WIN32 ${sources})

#
# Use static linking
#
target_compile_options(${PRJ_NAME} PUBLIC "/MT$<$<CONFIG:Debug>:d>")
