# Choose your desired base image
FROM jupyter/all-spark-notebook:spark-3.5.0

# WORKDIR /home/jovyan/work
# Instale o yarn globalmente
RUN npm install -g yarn typescript

# Adicione as dependências de linguagem
RUN yarn add --dev \
    bash-language-server \
    dockerfile-language-server-nodejs \
    pyright \
    sql-language-server \
    typescript-language-server \
    unified-language-server \
    vscode-css-languageserver-bin \
    vscode-html-languageserver-bin \
    vscode-json-languageserver-bin \
    yaml-language-server

RUN pip install jedi python-lsp-server

USER root

# Instalação do Google Cloud SDK - Etapa 1: Instalar dependências
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    gnupg \
    curl \
    lsb-release \
    software-properties-common

# Instalação do Google Cloud SDK - Etapa 2: Adicionar chave GPG e configurar repositório
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    echo "deb https://packages.cloud.google.com/apt cloud-sdk main" | tee /etc/apt/sources.list.d/google-cloud-sdk.list

# Instalação do Google Cloud SDK - Etapa 3: Instalar o SDK
RUN apt-get update && apt-get install -y google-cloud-sdk

# Limpeza de pacotes
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

USER jovyan

COPY ../requirements.txt .

RUN mamba install --yes --file requirements.txt
# Comando para iniciar a aplicação (se aplicável)
CMD ["npm", "start"]
