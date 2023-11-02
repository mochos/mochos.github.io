// Manejador de evento para el envío del formulario
document.querySelector('form').addEventListener('submit', (event) => {
    event.preventDefault(); // Evita el envío del formulario por defecto
  
    const input = document.getElementById('input').value.trim();
  
    // Si el campo de entrada está vacío, no hagas nada
    if (!input) {
      return;
    }
  
    // Verificar si el valor ya existe en el archivo JSON
    fetch('data.json')
      .then(response => response.json())
      .then(data => {
        if (data.includes(input)) {
          // Si el valor ya existe, muestra un mensaje de error
          document.getElementById('message').innerHTML = `El valor "${input}" ya existe.`;
        } else {
          // Si el valor no existe, agrégalo al archivo JSON
          data.push(input);
          fetch('data.json', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json'
            },
            body: JSON.stringify(data)
          })
            .then(response => {
              if (response.ok) {
                // Si la solicitud fue exitosa, muestra un mensaje de éxito
                document.getElementById('message').innerHTML = `El valor "${input}" se ha guardado.`;
              } else {
                // Si la solicitud falla, muestra un mensaje de error
                document.getElementById('message').innerHTML = `No se pudo guardar el valor "${input}".`;
              }
            })
            .catch(error => {
              // Si hay un error en la solicitud, muestra un mensaje de error
              document.getElementById('message').innerHTML = `Error: ${error.message}`;
            });
        }
      })
      .catch(error => {
        // Si hay un error al leer el archivo JSON, muestra un mensaje de error
        document.getElementById('message').innerHTML = `Error: ${error.message}`;
      });
});
