FROM python:3.9-slim

WORKDIR /app

# Instalamos dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el código de la aplicación (se mantiene por portabilidad)
# COPY . . # En su lugar, se recomienda montar el código como volumen al ejecutar el contenedor

# Comando para arrancar tu script de análisis
CMD ["python", "main.py"]
