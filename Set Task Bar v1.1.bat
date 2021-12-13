@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\Administrador\Desktop\Taskbar Position 1.1.exe
REM BFCPEICON=C:\Users\Administrador\Desktop\win11_barra_tarefas_topo\images\Taskbar top.ico
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=0
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.0.0.1
REM BFCPEVERPRODUCT=Taskbar Position
REM BFCPEVERDESC=Simple program to set taskbar on top
REM BFCPEVERCOMPANY=@EDINH08
REM BFCPEVERCOPYRIGHT=Copyright Info
REM BFCPEOPTIONEND
@ECHO ON
@echo off
echo press 1 to set teskbar to top.
echo press 2 to set teskbar to bottom.
set /p tb=
if %tb% == 1 goto ahver
if %tb% == 2 goto bottomahver

:ahver
    echo auto hide function active? 1.yes 2.no
    set /p ah=
    if %ah% == 1 goto topah
    if %ah% == 2 goto top


:bottomahver
    echo auto hide function active? 1.yes 2.no
    set /p ah=
    if %ah% == 1 goto bottomah
    if %ah% == 2 goto bottom



:top
    @echo off
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 /v Settings /t REG_BINARY /d 30000000feffffff7af40000010000003c0000003c00000000000000fc03000080070000380400007800000001000000 /f
    taskkill /f /im explorer.exe
    start explorer.exe
    exit
:topah
    @echo off
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 /v Settings /t REG_BINARY /d 30000000feffffff7bf40000010000003c0000003c00000000000000fc03000080070000380400007800000001000000 /f
    taskkill /f /im explorer.exe
    start explorer.exe
    exit
:bottom
    @echo off
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 /v Settings /t REG_BINARY /d 30000000feffffff7af40000030000003c0000003c00000000000000fc03000080070000380400007800000001000000 /f
    taskkill /f /im explorer.exe
    start explorer.exe
    exit
:bottomah
    @echo off
    reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 /v Settings /t REG_BINARY /d 30000000feffffff7bf40000030000003c0000003c00000000000000fc03000080070000380400007800000001000000 /f
    taskkill /f /im explorer.exe
    start explorer.exe
    exit