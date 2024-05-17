@echo off
mode con: cols=100 lines=20
Title _remove_empty_folder
color A1
@echo on
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ Echo: PharmApp // Copyright 2023 // NGHIEN CUU THUOC // RnD PHARMA PLUS // WWW.NGHIENCUUTHUOC.COM
@ Echo: Email: nghiencuuthuoc@gmail.com or info@nghiencuuthuoc.com
@ Echo: https://twitter.com/nghiencuuthuoc // https://facebook.com/nghiencuuthuoc
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ Echo: _remove_empty_folder
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ echo: THANKS FOR USING
@ echo: KEY SEACH!
@ echo: ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@echo off
set path=%~dp0
set xcopy=%SystemRoot%\system32\xcopy.exe
set ps=%SystemRoot%\system32\WindowsPowerShell\v1.0\Powershell.exe
set py=%LocalAppData%\Programs\Python\Python39\python.exe

REM set /p file_name=ENTER file name (not end py) ?:

%py% "%path%\move_file_input_cwd_mp4_jpg.py"
%ps% -executionpolicy remotesigned -File "%path%\_remove_empty_folder.ps1"


pause
REM timeout /t 10
cls
move_file_input_cwd_mp4_jpg.bat
