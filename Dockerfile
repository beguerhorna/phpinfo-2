# FROM scratch si el codigo esta compilado de forma estatica, FROM alpine carpeta llena de librerias

FROM alpine
# equivalente mkdir - p /app && cd /app
WORKDIR /app 
# copia de una carpeta de local
COPY src .
