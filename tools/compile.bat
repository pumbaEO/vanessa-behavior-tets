echo off
SET mypath=%~dp0
SETLOCAL

set BUILDPATH=.\build

rem if not exist %BUILDPATH% set BUILDPATH=..\build

set RUNNER_IBNAME=/F"./build/ib"
rem set RUNNER_DBUSER=base
rem set RUNNER_DBPWD=234567890

SET RUNNER_ENV=production

echo "compileepf"
oscript %mypath%/runner.os compileepf .\ %BUILDPATH%\out\
exit /B
