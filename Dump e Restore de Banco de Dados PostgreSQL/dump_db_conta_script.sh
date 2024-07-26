#!/bin/bash

# Variáveis
DB_NAME="db_conta"
BACKUP_FILE="db_conta.bkp"
PG_USER="postgres"

# Comando de realizar o backup do banco
echo "Iniciando o backup do banco de dados: $DB_NAME"
sudo -u $PG_USER pg_dump $DB_NAME > $BACKUP_FILE