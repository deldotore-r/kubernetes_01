# Kubernetes Local Automation with Kind & Bash 🚀

Este projeto demonstra a orquestração de microserviços em um ambiente Kubernetes local no Linux, utilizando **Kind** para o cluster e **Bash Scripts** para automação completa do ciclo de vida da infraestrutura.

## 🛠️ O que este projeto resolve?
Configurar ambientes de desenvolvimento Kubernetes pode ser complexo. Este repositório entrega uma solução "One-Command-Setup", onde um script Bash prepara o cluster, gerencia permissões e realiza o deploy de uma aplicação Nginx com réplicas e limites de recursos.

## 🧰 Stack Tecnológica
- **SO:** Xubuntu (Linux)
- **Engine:** Docker
- **Orquestrador:** Kubernetes (via Kind)
- **Automação:** Shell Script (Bash)

## 🏗️ Arquitetura e Conceitos Aplicados
- **Infrastructure as Code (IaC):** Todo o ambiente é versionável e reprodutível.
- **Resource Management:** Configuração de `limits` e `requests` para evitar o esgotamento de memória do Host.
- **High Availability:** Uso de 2 réplicas gerenciadas por um Deployment.
- **Service Discovery:** Exposição da aplicação via Service (ClusterIP) com tunelamento via Port-Forward.

## 🚀 Como rodar
1. Clone o repositório.
2. Execute `./scripts/setup.sh`.
3. Acesse `http://localhost:8080`.

---
*Destaque: Este projeto foi construído focando em boas práticas de mercado, como a separação de camadas (k8s vs scripts) e limpeza de recursos (cleanup.sh).*