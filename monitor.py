import os
import time

# Configurações
ARQUIVO_LOG = "sistema.log"

def verificar_sistema():
    # 1. Verifica se o arquivo existe
    if not os.path.exists(ARQUIVO_LOG):
        print("🔴 ALERTA: O arquivo sistema.log não foi encontrado!")
        return

    # 2. Abre o arquivo e procura por ERRO
    with open(ARQUIVO_LOG, 'r') as arquivo:
        conteudo = arquivo.read()
        
        # Converte tudo para minúsculo para achar 'Erro', 'ERROR', 'erro'
        if "error" in conteudo.lower():
            print("🔴 PERIGO: Erro crítico detectado no sistema!")
            print("-" * 30)
            # Mostra a linha do erro (simples)
            for linha in conteudo.splitlines():
                if "error" in linha.lower():
                    print(f"   Log: {linha}")
        else:
            print("🟢 STATUS: Sistema Operacional e Seguro.")

# Executa a função
print("🔍 Iniciando monitoramento Python...")
verificar_sistema()