<?php
// Función para obtener la lista de imágenes en un directorio y sus subdirectorios
function listarImagenes($directorio, $rutaRelativa = '') {
    $archivos = scandir($directorio);
    $archivos = array_diff($archivos, array('.', '..'));
    $imagenes = array();

    foreach ($archivos as $archivo) {
        $ruta = $directorio . '/' . $archivo;
        if (is_dir($ruta)) {
            $imagenes = array_merge($imagenes, listarImagenes($ruta, $rutaRelativa . '/' . $archivo));
        } else {
            $extension = strtolower(pathinfo($archivo, PATHINFO_EXTENSION));
            if (in_array($extension, array('jpg', 'jpeg', 'png', 'gif'))) {
                $imagenes[] = array(
                    'ruta' => $rutaRelativa . '/' . $archivo,
                    'nombre' => $archivo
                );
            }
        }
    }

    return $imagenes;
}

// Obtener la lista de imágenes en el directorio actual y sus subdirectorios
$imagenes = listarImagenes(__DIR__);

// Mostrar los enlaces relativos completos para cada imagen
echo "\n";
foreach ($imagenes as $imagen) {
    echo "<a href='/listar{$imagen['ruta']}'>{$imagen['ruta']}</a><br>";
}
?>
