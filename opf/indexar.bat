@echo off
setlocal enabledelayedexpansion

set "output_file=index.html"

echo Listing image files in current directory and subdirectories...
echo. > "%output_file%"

for /r %%i in (*.jpg *.jpeg *.png *.gif *.bmp *.tif *.tiff) do (
    set "file_path=%%i"
    set "file_path=!file_path:D:\Recursos\xampp-htdocs\=https://mochos.xyz/!"
    set "file_path=!file_path:\=/!"
    echo ^<a href=!file_path! target=_blank^>!file_path!^</a^>^<br^> >> "%output_file%"
)

echo List created: %output_file%
