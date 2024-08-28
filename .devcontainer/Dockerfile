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
COPY ../requirements.txt .

RUN pip install -r requirements.txt
# Comando para iniciar a aplicação (se aplicável)
CMD ["npm", "start"]