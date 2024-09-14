# Usa la imagen base de itzg/minecraft-server
FROM itzg/minecraft-server

# Configura las variables de entorno para el servidor
ENV EULA=TRUE \
    TYPE=FORGE \
    VERSION=1.20.6 \
    REMOVE_OLD_MODS=true \
    SEED=1691256543523180978

# Copia el archivo mods.txt al directorio correspondiente en el contenedor
COPY ./mods.txt /extras/mods.txt

# Expone el puerto del servidor
EXPOSE 25565

# Comando por defecto que se ejecutará al iniciar el contenedor
CMD ["start"]
