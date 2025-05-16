#!/bin/bash

# yt-dlp: comprobar e instalar 
if ! command -v yt-dlp &> /dev/null; then
    echo "yt-dlp no está instalado. Instalando..."
    sudo apt update
    sudo apt install -y yt-dlp
else
    echo "La herramienta yt-dlp ya está instalado."
fi

# ffmpeg: comprobar e instalar
if ! command -v ffmpeg &> /dev/null; then
    echo "ffmpeg no está instalado. Instalando..."
    sudo apt install -y ffmpeg
else
    echo "La herramienta ffmpeg ya está instalado."
fi

# Solicitar URL al usuario
read -p "Introduce la URL del video de YouTube: " URL

# Obtener el título limpio para el nombre del archivo
TITLE=$(yt-dlp --print "%(title)s" "$URL" | tr ' ' '_' | tr -cd '[:alnum:]_')
mkdir -p "$TITLE"
cd "$TITLE"

# Mostrar formatos disponibles
echo "Obteniendo formatos disponibles..."
yt-dlp -F "$URL"

# Solicitar formato de video al usuario
read -p "Introduce el código del formato de video que deseas (úncicamente el video, sin audio): " VIDEO_ID

# Descargar solo el video (sin audio)
yt-dlp -f "$VIDEO_ID" -o "${TITLE}_video.%(ext)s" "$URL"

# Descargar y extraer el audio en formato codec MP3
yt-dlp -x --audio-format mp3 -o "${TITLE}_audio.%(ext)s" "$URL"

# Mostrar información de archivos generados
echo "Información del video sin audio descargado:"
ffmpeg -i ${TITLE}_video.* -hide_banner

echo "Información del archivo de audio descargado: "
ffmpeg -i ${TITLE}_audio.mp3 -hide_banner

echo "Descarga completa de ambos archivos."
