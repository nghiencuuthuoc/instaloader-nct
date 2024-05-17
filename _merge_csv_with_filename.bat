@echo off
mode con: cols=95 lines=20
Title _merge_txt_with_filename
color A1
@echo on
@ echo:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@ Echo: PharmApp // Copyright 2024 // NGHIEN CUU THUOC // RnD PHARMA PLUS // WWW.NGHIENCUUTHUOC.COM
@ Echo: Email: nghiencuuthuoc@gmail.com // Facebook: https://facebook.com/nghiencuuthuoc
@ echo:++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
@echo off
for /r %%i in (*.csv) do (
if not %%~nxi == output.txt (
echo %%~nxi >> output.txt
type "%%i" >> output.txt
echo. >> output.txt
echo =================================================================== >> output.txt
)
)


REM set /p FILENAME = Enter filename:

REM set filename = "_" + "%FILENAME%"  + "_merge.txt"

REM rename output.txt filename

start "" output.txt

REM _merge_txt_with_filename.bat