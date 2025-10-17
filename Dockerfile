FROM alpine:latest
LABEL Name=hotelrealmerced Version=0.0.1
RUN apk add --no-cache fortune
ENTRYPOINT ["sh", "-c", "fortune -a | cat"]

# Usa una imagen base de Flutter
FROM cirrusci/flutter:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el contenido del proyecto al contenedor
COPY . /app

# Instala las dependencias de Flutter
RUN flutter pub get

# Abre el puerto necesario (si es que usas algún puerto específico, por ejemplo, si estás ejecutando algún servicio)
EXPOSE 8080

# Comando por defecto para ejecutar el proyecto
CMD ["flutter", "run"]
