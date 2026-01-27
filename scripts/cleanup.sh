#!/bin/bash

# Cores para o terminal
RED='\033[0;31m'
NC='\033[0m'

echo -e "${RED}Removendo cluster Kind (meu-projeto-k8s)...${NC}"

# Deleta o cluster pelo nome definido no setup
kind delete cluster --name meu-projeto-k8s

echo -e "${RED}Limpando configurações locais...${NC}"
# Remove logs ou arquivos temporários se existirem
rm -f scripts/*.log

echo "Ambiente limpo com sucesso!"