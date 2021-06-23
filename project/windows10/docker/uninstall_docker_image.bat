@echo off

echo.

echo Starting script...
echo.

echo Docker desktop should be running and configured to run Linux containers.
echo.

echo Should be signed in to dockerhub account.

timeout 3

echo Uninstalling the docker container image...
echo.

docker rmi dlbuesen/redox-active-film-distribution-reversible:v1.0.1-layer05

timeout 3
echo Listing the installed docker images on the system...

timeout 3

docker images

timeout 3

echo Docker image from repository
echo "dlbuesen/redox-active-film-distribution-reversible"
echo with tag "v1.0.1-layer05"
echo should not appear in the list of images above
echo.

echo Done
echo.

pause
