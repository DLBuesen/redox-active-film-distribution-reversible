@echo off

echo.
echo Docker desktop should be running and configured to run Linux containers.
echo.
echo Should be signed in to dockerhub account.

timeout 3

echo checking login status...
echo.
docker login

timeout 3

echo.
echo For granting the Docker container access to the screen...
echo XLaunch should be running with "Disable access control" selected.
echo.
echo Enter the screen number assigned in XLaunch (i.e. "0")
echo.
set /p XLaunchScreenID=
echo.

echo The entered XLaunch display is %XLaunchScreenID%

timeout 3

echo.
echo For setting up communication with the Docker container...
echo.

pause

netsh interface ipv4 show interfaces

echo Step 1/2: enter the "Idx" number for "vEthernet (WSL)", i.e. "76"
set /p IdxWSL=
echo.

netsh interface ipv4 show config name=%IdxWSL%
echo Step 2/2: Enter the value of the "IP Address"
echo i.e. "111.11.111.1"
echo.

set /p IPv4=

echo.
echo The entered IP address is %IPv4%
echo.

:: PAUSE

:: Need to cd to the project folder, using this batch file as the reference point

	:: %~dpnx0% name and location of the batch file being run
	:: d=drive, p=path, n=name, extension

	:: echo %~dp0%
	:: echo %cd%

	cd %~dp0%
	cd ..

	echo Current working directory is %cd%

:: Run the container

docker run --rm -ti --env DISPLAY=%IPv4%:%XLaunchScreenID% -p 127.0.0.1:8000:8000 -v "%cd%":/home/fenics/shared -v "%cd%":/project -w / dlbuesen/redox-active-film-distribution-reversible:version-1.0-layer-07 ./launchApp.sh

