echo off
SET mypath=%~dp0
SETLOCAL

set BUILDPATH=.\build

if not exist %BUILDPATH% set BUILDPATH=..\build

rem set RUNNER_IBNAME=/F"D:\work\base\dev"
rem set RUNNER_DBUSER=base
rem set RUNNER_DBPWD=234567890

SET RUNNER_ENV=production

echo "compileepf"
oscript %mypath%/runner.os compileepf %BUILDPATH%\..\ %BUILDPATH%\out\ %connstring% %USERPWD%
exit /B
