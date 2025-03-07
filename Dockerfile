# Utiliser une image Python comme base
FROM python:3.10-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers nécessaires
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste du code
COPY . .

# Commande par défaut
CMD ["python", "src/main.py"]

