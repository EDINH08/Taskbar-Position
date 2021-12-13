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
REM BFCPEVERDESC=Script simples para colocar a barra de tarefas no canto  superior.
REM BFCPEVERCOMPANY=@EDINH08
REM BFCPEVERCOPYRIGHT=Copyright Info
REM BFCPEOPTIONEND
@ECHO ON
@echo off
reg export HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3 TaskbarBackup.reg
echo Pressione 1 para definir a barra de tarefas no canto superior.
echo Pressione 2 para definir a barra de tarefas no canto inferior.
set /p tb=
if %tb% == 1 goto ahver
if %tb% == 2 goto bottomahver

:ahver
    echo Funcao esconder automaticamente ativa? 1 = yes, 2 = nao
    set /p ah=
    if %ah% == 1 goto topah
    if %ah% == 2 goto top


:bottomahver
    echo Funcao esconder automaticamente ativa? 1 = yes, 2 = nao
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