#!/bin/bash

# Instalação das dependências
echo "Instalando dependências..."
sudo apt-get update
sudo apt-get install -y python3-pip python3-venv

# Configuração do ambiente
echo "Configurando ambiente..."
mikrotik_host="192.168.1.1"
mikrotik_port=8728
mikrotik_username="admin"
mikrotik_password="mypassword"

db_host="localhost"
db_port=5432
db_name="meu_banco_de_dados"
db_username="meu_usuario"
db_password="minha_senha"

smtp_server="smtp.example.com"
smtp_port=587
smtp_username="seu_usuario"
smtp_password="sua_senha"

# Configuração da API da OpenAI
echo "Configurando API da OpenAI..."
openai_api_key="sua_chave_de_api"

# Configuração do ambiente virtual
echo "Configurando ambiente virtual..."
python3 -m venv myenv
source myenv/bin/activate

# Instalação das bibliotecas Python
echo "Instalando bibliotecas Python..."
pip install numpy tensorflow keras scikit-learn psycopg2-binary openai openai_secret_manager

# Configuração do openai_secret_manager
openai_secret_name="openai"
openai_secret_key="sua_chave_de_api"

# Configuração da chave de API da OpenAI
echo '{"api_key": "'"$openai_secret_key"'"}' > openai_secret.json

# Configuração do openai_secret_manager
openai_secret_manager set $openai_secret_name --file openai_secret.json

# Download do script
echo "Baixando o script..."
curl -O https://raw.githubusercontent.com/cartoonbr/provedorddos/main/meu_script.py

# Execução do script
echo "Executando o script..."
python meu_script.py

echo "Instalação concluída."
