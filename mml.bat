@echo off

set PMD_INPUT_MML=%1
set "PMD_OUTPUT_EXT= "

for /f "tokens=2" %%a in ('FINDSTR /b /n "#Filename" "MML\%PMD_INPUT_MML%.MML"') do (
set MML_OUTPUT_FILENAME=%%a
)

set PMD_OUTPUT_EXT=%MML_OUTPUT_FILENAME:~-3%

cd BIN\COMPILER
PMDDotNETConsole.exe "..\..\MML\%PMD_INPUT_MML%.MML"

echo File generated as %PMD_INPUT_MML%%PMD_OUTPUT_EXT%

cd ..\PLAYER
START fmplayer.exe "..\..\MML\%PMD_INPUT_MML%%PMD_OUTPUT_EXT%"

cd ..\..
