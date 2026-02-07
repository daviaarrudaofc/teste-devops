#!/bin/bash

# 1. Definir variáveis (Onde e O Quê)
PASTA_BACKUP="backups"
ARQUIVO="sistema.log"
DATA=$(date +%Y-%m-%d_%H-%M-%S)

# 2. Criar a pasta de backup se não existir
# -p evita erro se já existir
mkdir -p $PASTA_BACKUP

# 3. Copiar o arquivo com o novo nome datado
cp $ARQUIVO "$PASTA_BACKUP/$DATA-$ARQUIVO"

# 4. Avisar o humano
echo "✅ Backup realizado com sucesso em: $PASTA_BACKUP/$DATA-$ARQUIVO"
