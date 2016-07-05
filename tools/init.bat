echo off
SET mypath=%~dp0
SETLOCAL

set BUILDPATH=.\build
if not exist %BUILDPATH% set BUILDPATH=..\build

rem set RUNNER_IBNAME=/F"D:\work\base\dev"
rem set RUNNER_DBUSER=base
rem set RUNNER_DBPWD=234567890

SET RUNNER_ENV=production

IF "%~1"=="" (
set mode="./lib/CF/83NoSync"
) else (
set mode=%1
)

echo "init"
oscript %mypath%/init.os init-dev --src %mode%
oscript %mypath%/init.os init-dev --src %mode% --dev
exit /B
