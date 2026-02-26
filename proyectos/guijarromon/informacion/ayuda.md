# 🆘 Ayuda

### Problemas comunes

| Problema                                                                                                                                                                                                                                                               | Solución                                                                                                                                                                                                                                                                    |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| <p>Crashea con este error en consola:<br><code>Minecraft 1.18 Pre Release 2 and above require the use of Java 17</code></p>                                                                                                                                            | Actualiza tu instalación de Java a la versión 21. Descarga el instalador [en este enlace](https://www.oracle.com/java/technologies/downloads/#java21). El que dice "**x64 Installer**". Luego configura la ruta de acceso de Java en el launcher con esta nueva versión.    |
| <p>Al tratar de entrar al servidor te bloquea con el mensaje:<br><code>You are not whitelisted on this server!</code></p>                                                                                                                                              | Si fuiste invitado al servidor y te sale esto, contacta a algún admin o streamer de Guijarromon o a la persona que te invitó. Si no sabes a quién contactar, es la razón por la que no fuiste invitado. :v                                                                  |
| `El proceso se cerró con el código 1.`                                                                                                                                                                                                                                 | Probablemente tu hardware no aguanta el modpack :cry:                                                                                                                                                                                                                       |
| <p><img src="../.gitbook/assets/obteniendo-recursos.png" alt="" data-size="original"></p><p>PolyMC / MultiMC se queda obteniendo recursos desde Mojang y no avanza.</p>                                                                                                | Cancela, cierra el launcher y vuelve a iniciar.                                                                                                                                                                                                                             |
| <p><img src="../.gitbook/assets/cuenta.png" alt=""></p><p>En PolyMC / MultiMC al tratar de ejecutar la instancia te sale este mensaje.</p>                                                                                                                             | Dale "Yes" y en el administrador de cuentas entra a "Agregar cuenta sin conexión". Ahí pones el nombre de usuario con el que vas a entrar al Servidor                                                                                                                       |
| En PolyMC / MultiMC al instalar el modpack no contiene ningún mod. Cuando esto pasa a veces tampoco carga el icono de Guijarromon en la instancia.                                                                                                                     | A veces suceden errores de descarga del modpack. Debes borrar la instancia y volver a instalarla. Sabrás que ha descargado correctamente si ves el icono de Guijarromon en la instancia y al abrirlo te carga una pantalla de inicio personalizada del modpack.             |
| <p>Te saca del servidor con un mensaje que empieza mas o menos así:<br><code>Conexión perdida</code></p><p><code>Received 2 registry entries that are unknoun to this client. This is usually caused by a mismatched mod set between the client and server.</code></p> | <p>Esto es porque actualizaste mods del servidor en tu cliente. Las versiones de los mods deben coincidir exactamente. De lo contrario, te expulsa inmediatamente al entrar.<br><br>La solución es sencilla: Restaura los mods que actualizaste o reinstala el modpack.</p> |

### ¿Cómo ocultar contraseña en stream?

El modpack incluye un mod de macros al que le puedes asignar comandos. Para evitar que tu `/login` se vea en stream configura un macro para ejecutar el comando de la siguiente forma:

1. Busca en la configuración de controles esta configuración y asígnale una tecla.

![](https://i.imgur.com/RqKDa1c.png)

2. Con esa tecla asignada abres la configuración de macros. En esta pantalla dale al botón "Add Macro"

![](https://i.imgur.com/CqAQVei.png)

3. Luego despliega el macro que acabas de crear y pone tu comando `/login <contraseña>`, asígnale una tecla y dale "Save & Exit"

![](https://i.imgur.com/g0O1XGX.png)

4. Cuando entres al servidor solo presionas la tecla asignada al macro y este comando se ejecutará en silencio. Si ya expusiste tu contraseña, usa el comando `/changepass <antigua contraseña> <nueva contraseña>` para cambiarla.

### Actualizar modpack

{% tabs %}
{% tab title="Modrinth (Premium)" %}
<figure><img src="../.gitbook/assets/modrinth-logo.svg" alt="" width="322"><figcaption></figcaption></figure>

{% hint style="warning" %}
Antes de actualizar recuerda respaldar los siguientes archivos de la carpeta `.minecraft` de la instancia:

* `options.txt`: Guarda todas las configuraciones del juego incluyendo las asignaciones de teclas.
* Carpeta `config/`: Guarda las configuraciones específicas de cada mod.
* Carpetas `XaeroWaypoints` y `XaeroWorldMap`: Guardan toda la exploración que has hecho en el mapa y tus waypoints.
{% endhint %}

La actualización se hace de forma automática en el launcher. Si por algún motivo esto falla, verifica que la versión del modpack que tienes es la última disponible de la siguiente forma:

{% stepper %}
{% step %}
### Busca actualizaciones

Entra en la instancia y dale al botón "Update pack" en la parte superior derecha de la lista de mods. Si no existe este boton, dale en "Refresh" para verificar actualizaciones.

<figure><img src="../.gitbook/assets/update_pack.png" alt=""><figcaption></figcaption></figure>


{% endstep %}

{% step %}
### Selecciona la release más reciente

Dale clic en el icono verde de la release más reciente que te aparezca en la lista.

<figure><img src="../.gitbook/assets/release.png" alt=""><figcaption></figcaption></figure>
{% endstep %}

{% step %}
### Espera

Espera a que se termine de actualizar y listo.

<figure><img src="../.gitbook/assets/download.png" alt=""><figcaption></figcaption></figure>


{% endstep %}
{% endstepper %}
{% endtab %}

{% tab title="PolyMC (No premium)" %}
<figure><img src="../.gitbook/assets/polymc-logo.svg" alt="" width="198"><figcaption></figcaption></figure>

{% hint style="warning" %}
Antes de actualizar recuerda respaldar los siguientes archivos de la carpeta `.minecraft` de la instancia:

* `options.txt`: Guarda todas las configuraciones del juego incluyendo las asignaciones de teclas.
* Carpeta `config/`: Guarda las configuraciones específicas de cada mod.
* Carpetas `XaeroWaypoints` y `XaeroWorldMap`: Guardan toda la exploración que has hecho en el mapa y tus waypoints.
{% endhint %}

{% stepper %}
{% step %}
### En la ventana principal dale en "Añadir instancia"

<img src="../.gitbook/assets/anadir-poly.png" alt="" data-size="original">
{% endstep %}

{% step %}
### Dale a la opción "Modrinth", busca "Guijarromon" y dale "OK"

<img src="../.gitbook/assets/polymc-buscar.png" alt="" data-size="original">
{% endstep %}

{% step %}
### Actualizar instancia existente

El detectar que ya existe una instancia del modpack te va a preguntar lo siguiente a lo cual debes darle a la opción "Actualizar la instancia existente" y espera a que se termine de actualizar.

<figure><img src="../.gitbook/assets/actualizar.png" alt=""><figcaption></figcaption></figure>
{% endstep %}

{% step %}
### Espera y renombra

Al terminar la actualización te preguntará si deseas renombrar. Dale que si para que sepas en que versión estás.

<figure><img src="../.gitbook/assets/nombre.png" alt=""><figcaption></figcaption></figure>


{% endstep %}

{% step %}
### Recupera tus configuraciones

Pega nuevamente en la carpeta `.minecraft` de la instancia las configuraciones que respaldaste.
{% endstep %}
{% endstepper %}
{% endtab %}
{% endtabs %}

