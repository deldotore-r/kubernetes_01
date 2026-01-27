#!/bin/bash

# Abortar o script em caso de erro
set -e

# Faz o script sempre rodar a partir da raiz do projeto, independente de onde você o chamou
PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")"; pwd -P)
cd "$PARENT_PATH/.."

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}== Iniciando Setup do Ambiente Kubernetes ==${NC}"

# 1. Criar o cluster Kind
if ! kind get clusters | grep -q "meu-projeto-k8s"; then
    echo -e "${GREEN}Criando cluster 'meu-projeto-k8s'...${NC}"
    kind create cluster --name meu-projeto-k8s
else
    echo -e "${GREEN}Cluster já existe. Pulando criação...${NC}"
fi

# 2. Aplicar os manifestos
echo -e "${GREEN}Aplicando manifestos da pasta k8s/base/...${NC}"
kubectl apply -f k8s/base/

# 3. Aguardar os Pods
echo -e "${GREEN}Aguardando os Pods ficarem online (isso pode levar alguns segundos)...${NC}"
kubectl wait --for=condition=ready pod -l app=web-server --timeout=90s

echo -e "${BLUE}== Deploy finalizado com sucesso! ==${NC}"
echo -e "Para testar, rode em um novo terminal:"
echo -e "kubectl port-forward svc/nginx-service 8080:80"
echo -e "E acesse http://localhost:8080 no seu navegador."