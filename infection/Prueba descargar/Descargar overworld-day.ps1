# Define la URL del repositorio y la ruta de la carpeta de imágenes
$repoUrl = "https://api.github.com/repos/lorspi/Infection/contents/overworld/day"
$rutaLocal = "overworld\day"

# Verifica si la ruta local existe, si no, crea el directorio
if (-not (Test-Path -Path $rutaLocal)) {
    New-Item -ItemType Directory -Path $rutaLocal | Out-Null
}

# Realiza la solicitud GET a la API de GitHub
$headers = @{
    "Accept" = "application/vnd.github.v3.raw"
    "User-Agent" = "powershell"
}
$response = Invoke-RestMethod -Uri $repoUrl -Headers $headers

# Descarga y guarda cada archivo individualmente
foreach ($file in $response) {
    $fileName = $file.name
    $fileDownloadUrl = $file.download_url
    
    # Descarga el archivo binario directamente
    Invoke-WebRequest -Uri $fileDownloadUrl -OutFile (Join-Path -Path $rutaLocal -ChildPath $fileName)
}

Write-Host "Imágenes descargadas exitosamente."

Read-Host -Prompt "Presiona Enter para salir"

