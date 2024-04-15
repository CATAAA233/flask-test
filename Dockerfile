# Usa la imagen base de Python
FROM python:3.9

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el contenido del directorio actual al contenedor en /app
COPY . .

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 8080 para que pueda ser accesible desde fuera del contenedor
EXPOSE 8080

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080", "--debug"]
