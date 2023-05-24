#!/bin/bash

# Instalação das dependências
echo "Instalando dependências..."
sudo apt-get update
sudo apt-get install -y python3-pip

# Configuração do ambiente
echo "Configurando ambiente..."
mikrotik_host="192.168.88.1"
mikrotik_port=8728
mikrotik_username="admin"
mikrotik_password="inside10"

db_host="localhost"
db_port=5432
db_name="ddosprovedor"
db_username="root"
db_password="manu031290"

smtp_server="smtp.gmail.com"
smtp_port=587
smtp_username="appboxplayer@gmail.com"
smtp_password="#Manu51381345"

# Configuração da API da OpenAI
echo "Configurando API da OpenAI..."
openai_api_key="KgBGUALUaHXAYSSOn5m3T3BlbkFJvHxrCbG0LxmOXWA145N0"

# Configuração da chave de API da OpenAI
echo '{"api_key": "'"$openai_api_key"'"}' > openai_secret.json

# Instalação do pacote openai_secret_manager
echo "Instalando pacote openai_secret_manager..."
pip3 install openai_secret_manager

# Configuração do openai_secret_manager
openai_secret_name="openai"
openai_secret_key="KgBGUALUaHXAYSSOn5m3T3BlbkFJvHxrCbG0LxmOXWA145N0"

# Configuração da chave de segredo da OpenAI
echo '{"api_key": "'"$openai_secret_key"'"}' > openai_secret.json

# Configuração do openai_secret_manager
openai_secret_manager set $openai_secret_name --file openai_secret.json

# Download do script
echo "Baixando o script..."
curl -O https://example.com/meu_script.py

# Instalação das bibliotecas Python
echo "Instalando bibliotecas Python..."
pip3 install numpy tensorflow keras scikit-learn psycopg2 openai openai_secret_manager

# Execução do script
echo "Executando o script..."
python3 meu_script.py

echo "Instalação concluída."
