@echo off
title Instagram Downloader
prompt IGDownlaoder
color b
cls

python --version 3>NUL
if errorLevel 1 goto errorNoPython
:: Install Instaloader
pip install instaloader

::Exportt sesion from FireFox
color 4
cls
echo Warning! You have to have FireFox and logged in to instagram to download private profiles that you followed.
pause
echo Importing session Instagram from Firefox...
py export-sesion.py
cls
color b
:: Code
cls
echo Hello, please enter name of instagram that you want to install.
set /P nameofinstagram=@
echo Enter your instagram session
set /P sessionaname=@
cls
echo Downloading all photos, stories, highlights, igtv with no metadatas of %nameofinstagram%
instaloader --login %sessionaname% --stories --highlights --igtv --no-captions --no-metadata-json --no-compress-json %nameofinstagram%
cls
color f
echo Done, thank you for using this easy script lol!
TIMEOUT /T 5 /NOBREAK > NUL
prompt
color
exit
:: Code
:errorNoPython
echo.
echo Error^: Python not installed
prompt
color
exit