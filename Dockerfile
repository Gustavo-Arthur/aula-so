# Imagem base leve do Python
FROM python:3.11-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia arquivos do projeto
COPY . /app

# Instala dependências
RUN pip install --no-cache-dir fastapi uvicorn

# Expõe a porta padrão do uvicorn
EXPOSE 8000

# Comando para rodar a aplicação
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
