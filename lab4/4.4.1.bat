REM Author: Casey Bladow
REM Purpose: Requests login name and checks validity
REM Creation Date: 2/17/2015
REM Outside Help: http://stackoverflow.com/questions/9231044/windows-batch-file-validate-user-input-environmental-variable-is-hexadecimal

@echo off
setlocal enableDelayedExpansion
:Get_ID
set "_ID="
set /p _ID=Enter username:
if not defined _ID echo You must enter a name. Try again.&goto Get_ID
set "test=!_ID!"
for %%C in (A B C D E F G H I J K L M N O P Q R S T U V W X Y Z) do if defined test set "test=!test:%%C=!"
if defined test echo Invalid input. Try again.&goto Get_ID