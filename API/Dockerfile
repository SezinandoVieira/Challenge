# Aqui é a imagem que eu escolhi depois de dar uma olhada no Dockerhub
FROM python:3.7-slim

# Escolhendo o diretório de trabalho da API
WORKDIR /app

# Copie os requisitos do projeto para o arquivo abaixo
COPY requirements.txt requirements.txt

# Instação dos mesmos
RUN pip install -r requirements.txt

# Copiando o código do projeto
COPY . .

# Expondo a porta que o Flask vai rodar
EXPOSE 5000

# Comando para rodar o aplicativo
CMD ["python", "app.py"]
