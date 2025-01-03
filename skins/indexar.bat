@echo off
setlocal enabledelayedexpansion

set "output_file=index.html"

echo Listing image files in current directory and subdirectories...
echo. > "%output_file%"

for /r skins %%i in (*.jpg *.jpeg *.png *.gif *.bmp *.tif *.tiff) do (
    set "file_path=%%i"
    set "file_path=!file_path:E:\GitHub\mochos.github.io\skins\skins\=!"
    set "file_path=!file_path:.png=!"
    set "file_path=!file_path:\=/!"
    echo ^<a href=skin.html?nombre=!file_path!^>!file_path!^</a^>^<br^> >> "%output_file%"
)

echo List created: %output_file%
