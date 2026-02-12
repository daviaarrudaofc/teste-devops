# 🚀 DevOps Monitoring Pipeline & Observability

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![Docker](https://img.shields.io/badge/docker-v27.0-blue)
![Kubernetes](https://img.shields.io/badge/kubernetes-manifests-blueviolet)
![Grafana](https://img.shields.io/badge/observability-grafana-orange)

## 📋 Sobre o Projeto
Este projeto simula um ambiente real de DevOps, focando na automação do ciclo de vida de uma aplicação (CI/CD), orquestração de containers e monitoramento em tempo real.

O objetivo foi aplicar na prática os conceitos de **Imutabilidade**, **Infraestrutura como Código (IaC)** e **Observabilidade**.

---

## 🏗️ Arquitetura da Solução

O fluxo de trabalho foi desenhado para garantir entregas rápidas e seguras:

```mermaid
graph LR
A[Dev (Code)] -- Git Push --> B(GitHub Actions)
B -- Build & Test --> C{Docker Hub}
C -- Pull Image --> D[Kubernetes / Docker Compose]
D -- Métricas --> E[Prometheus]
E -- Visualização --> F[Grafana]
🛠️ Tecnologias Utilizadas
Linguagem: Python (Script de monitoramento de recursos).

Containerização: Docker & Docker Compose.

Orquestração: Kubernetes (Manifestos de Deployment e Service).

CI/CD: GitHub Actions (Automação de Build e Push).

Observabilidade: Prometheus (Coleta) e Grafana (Visualização).

Versionamento: Git & GitHub.

📸 Evidências (Screenshots)
1. Pipeline de CI/CD (GitHub Actions)
Automação completa: Checkout do código, Build da imagem Docker e Push para o Registry.


2. Observabilidade (Grafana Dashboard)
Monitoramento em tempo real da saúde dos containers e uso de recursos (CPU/Memória).


🚀 Como Rodar o Projeto
Pré-requisitos
Docker e Docker Compose instalados.

Passo a Passo
Clone o repositório:

Bash
git clone [https://github.com/SEU-USUARIO/SEU-REPO.git](https://github.com/SEU-USUARIO/SEU-REPO.git)
cd SEU-REPO
Suba o ambiente de Observabilidade (Local):
Utilizamos o Docker Compose para subir a stack do Prometheus e Grafana instantaneamente.

Bash
docker compose up -d
Acesse o Dashboard:

Abra o navegador em: http://localhost:3000

Login/Senha: admin / admin

🧠 Decisões Técnicas (Why?)
Por que Docker? Para garantir que a aplicação rode exatamente igual no meu ambiente local e em produção, eliminando o problema de "funciona na minha máquina".

Por que GitHub Actions? Para eliminar o processo manual de build. Toda vez que um código sobe, a imagem é recriada e testada automaticamente.

Por que Prometheus/Grafana? Para ter visibilidade proativa. Em vez de esperar o sistema cair, monitoramos picos de uso para agir antes da falha.

📞 Contato
Projeto desenvolvido por Davi Arruda.
www.linkedin.com/in/davi-arruda-417053330


---
