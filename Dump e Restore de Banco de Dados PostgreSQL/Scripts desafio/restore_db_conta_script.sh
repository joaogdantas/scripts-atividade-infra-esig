#!/bin/bash

# Variáveis
DB_NAME="db_conta"
BACKUP_FILE="db_conta.bkp"
PG_USER="postgres"

# Comando de recuperar o banco de dados
echo "Iniciando a criação do banco de dados: $DB_NAME"
sudo -u $PG_USER psql $DB_NAME < $BACKUP_FILE