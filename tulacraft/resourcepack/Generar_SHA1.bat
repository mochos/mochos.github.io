@echo off
:: Obtiene la ruta del archivo arrastrado
set "archivo=%~1"

:: Verifica que se pasó un archivo
if "%archivo%"=="" (
    echo Arrastra un archivo sobre este .bat para generar su SHA1.
    pause
    exit /b
)

:: Carpeta donde está el .bat
set "carpetaBat=%~dp0"

:: Nombre base del archivo sin extensión
set "nombreArchivo=%~n1"

:: Ruta del TXT de salida en la misma carpeta que el .bat
set "salida=%carpetaBat%SHA1.txt"

:: Calcula el SHA1, toma solo la segunda línea (el hash) y lo guarda
for /f "skip=1 tokens=* delims=" %%a in ('certutil -hashfile "%archivo%" SHA1 ^| findstr /r /v "certutil"') do (
    echo %%a>"%salida%"
    goto :fin
)

:fin
echo SHA1 generado en: %salida%
pause
