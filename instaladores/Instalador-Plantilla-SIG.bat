@echo off
title Instalador de Plantilla Institucional SIG - CREFINSA

echo ============================================================
echo        SISTEMA INTEGRADO DE GESTION - CREFINSA
echo     Instalador de Plantilla Institucional para Word
echo ============================================================
echo.

REM === Enlace directo de descarga desde el SIG ===
set url=https://crefinsa-sig.web.app/plantillas/Plantilla-SIG.dotx

REM === Carpeta de destino ===
set target=%APPDATA%\Microsoft\Templates

REM === Nombre del archivo ===
set file=Plantilla-Oficial-SIG.dotx

echo Descargando plantilla institucional desde el SIG...
powershell -command "(New-Object Net.WebClient).DownloadFile('%url%', '%target%\%file%')"

if %errorlevel%==0 (
    echo.
    echo La plantilla institucional SIG ha sido instalada correctamente.
    echo Ubicacion local:
    echo %target%\%file%
) else (
    echo.
    echo ERROR: No se pudo descargar o instalar la plantilla.
    echo Verifique el enlace o contacte a Gestion Documental.
)

echo.
echo Proceso completado.
pause


