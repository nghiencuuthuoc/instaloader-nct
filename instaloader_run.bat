@echo off
mode con: cols=100 lines=20
Title instaloader_run
color A1
@echo on
@ echo:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ Echo: PharmApp // Copyright 2024 // NGHIEN CUU THUOC // RnD PHARMA PLUS // WWW.NGHIENCUUTHUOC.COM
@ Echo: Email: nghiencuuthuoc@gmail.com // Facebook: https://facebook.com/nghiencuuthuoc
@ echo:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

@ECHO off
set path=%~dp0
set py=%LocalAppData%\Programs\Python\Python39\python.exe

REM set /p file_name=ENTER file name (not end py) ?:

%py% "%path%\instaloader_run.py"

pause
cls
instaloader_run.bat
