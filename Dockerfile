# FROM scratch si el codigo esta compilado de forma estatica, FROM alpine carpeta llena de librerias
FROM alpine
# equivalente mkdir - p /app && cd /app
WORKDIR /app 
# copia de una carpeta de local
COPY src .
# instala el paquete php = yum install php
RUN apk add php
# php index.php, es lo que queremos conseguir
ENTRYPOINT /usr/bin/php
#crear el Docke
CMD -f index -S 0.0.0.0:8080
