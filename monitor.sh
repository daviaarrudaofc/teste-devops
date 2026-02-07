#!/bin/bash

ARQUIVO="sistema.log"

# O comando -f verifica se é um Arquivo (File) e se ele existe
if [ -f "$ARQUIVO" ]; then
    echo "🟢 STATUS: O sistema está ONLINE."
    echo "🔍 Tamanho do log:"
    du -h $ARQUIVO
else
    echo "🔴 ALERTA: O sistema.log sumiu! O serviço pode estar parado."
fi
