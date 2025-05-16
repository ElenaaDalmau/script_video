# SCRIPT PARA DESCARGAR VIDEOS AUTOMATICAMENTE

**script.sh** es un script en Bash diseñado para automatizar la descarga de videos de YouTube, separando el video y el audio por separado. Para poder utilizarlo, vamos a utilizar las herramientas `yt-dlp` y `ffmpeg`.
Además, comprueba si estas herramientas están instaladas en el sistema y las instala automáticamente si no lo están.

---

## 🎯 Propósito del Script

El objetivo principal de **script.sh** es facilitar la descarga de contenido de YouTube en dos partes:

- Un archivo de video sin audio, en el formato elegido por el usuario.
- Un archivo de audio extraído en formato MP3.

Este enfoque permite trabajar con archivos de video y audio por separado, ideal para tareas como edición multimedia, análisis de contenido, o preparación para postproducción.

---

## ⚙️ Dependencias y Requisitos Previos

El script está diseñado para sistemas Linux que utilicen `apt` como gestor de paquetes (Debian, Ubuntu, etc.).

### Requisitos del sistema:

- **Sistema Operativo:** Linux (Debian/Ubuntu o derivados)  
- **Shell:** Bash (v4 o superior)  
- **Herramientas necesarias:**  
  - [`yt-dlp`](https://github.com/yt-dlp/yt-dlp): herramienta moderna para descargar videos de plataformas como YouTube.  
  - [`ffmpeg`](https://ffmpeg.org/): para manipulación y análisis de archivos multimedia.

> ⚠️ El script instalará automáticamente `yt-dlp` y `ffmpeg` si no están presentes en el sistema.

---

## 📦 Instalación

No se requiere instalación como tal. Solo necesitas descargar o clonar el script:

```bash
git clone https://github.com/ElenaaDalmau/script_video.git
cd script_video
chmod +x script.sh
```

Si solo tienes el archivo:
```bash
chmod +x script.sh
```

🚀 Uso

Para poder utilizarlo, hay que ejecuatr el script en la terminal con permisos adecuados (dados anteriormente):

```bash
./script.bash
```

---
Flujo del script:

Verifica e instala yt-dlp y ffmpeg si no están disponibles.

Solicita al usuario la URL de un video de YouTube.

Extrae el título del video y crea una carpeta con ese nombre (formateado).

Muestra los formatos de descarga disponibles.

Pide al usuario que seleccione el formato de video sin audio.

Descarga:

El video sin audio (solo video).

El audio por separado en formato MP3.

Muestra información técnica de ambos archivos usando ffmpeg.
---

## 📁 Salida Esperada
Dentro de una carpeta con el nombre del video, se generarán al menos dos archivos:

TITULO_video.mp4 (o el formato de video elegido)

TITULO_audio.mp3

Además, se imprime en consola la información técnica de cada archivo que se ha descargado.

---
## ❗ Advertencias y Consideraciones
Este script no descarga videos completos con audio, sino los componentes por separado (al final tendremos dos archivos: un archivo de video sin audio, y un archivo de audio).

Asegúrate de tener suficiente espacio en disco para los archivos descargados.

sudo es requerido para instalar dependencias si no están presentes.

El uso de yt-dlp está sujeto a las políticas de uso de YouTube y otras plataformas. Úsalo con responsabilidad y dentro del marco legal aplicable en tu país.

## 📝 Licencia
Este script se distribuye bajo la licencia MIT. Puedes modificarlo, redistribuirlo y adaptarlo según tus necesidades, siempre dando crédito al autor original si corresponde.

## 👨‍💻 Autor
Desarrollado por ElenaaDalmau.



