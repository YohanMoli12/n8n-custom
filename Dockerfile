# Usa la imagen oficial de n8n como base
FROM n8nio/n8n

# Cambia al usuario root para poder instalar paquetes
USER root

# Instala ffmpeg usando el gestor de paquetes 'apk'
RUN apk update && apk add ffmpeg

# Vuelve al usuario node por seguridad
USER node
