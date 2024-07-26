Este repositório contém scripts para a realização dos desafios do estágio em infraestrutura da ESIG Software.

#### Tecnologias necessárias
![Linux](https://img.shields.io/badge/linux-ffff00?style=for-the-badge&logo=linux&logoColor=black)
![Postgres](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)

# Criando backup e restaurando um banco de dados PostgreSQL

## Configuração do Ambiente

### 1 - Instalação do PostgreSQL

Caso o PostgreSQL não esteja instalado, instale-o com o comando:

```bash
sudo apt update
sudo apt install postgresql postgresql-contrib
```

### 2 - Inicializar o Banco de Dados PostgreSQL

Inicie o serviço PostgreSQL com o seguinte comando:

```bash
sudo service postgresql start
```

### 3 - Criar um Usuário e um Banco de Dados

Crie um novo usuário e banco de dados para o projeto. Para isso, siga os passos abaixo:

1 - Acesse o usuário `postgres`:

```bash
sudo -i -u postgres
```

2 - Crie um novo usuário:

```bash
createuser -P seu_usuario
```
Substitua `seu_usuario` pelo nome do seu usuário.
Defina uma senha.

3 - Crie um novo banco de dados atribuindo-o ao usuário recém-criado:

```bash
createdb db_contas -O seu_usuario
```

Substitua `seu_usuario` pelo nome do seu usuário.

### 4 - Configurar Acesso

Certifique-se de que o arquivo `pg_hba.conf` está configurado para permitir o acesso ao banco de dados.

1 - Localize o arquivo `pg_hba.conf`. Normalmente, ele está localizado em:

```bash
/etc/postgresql/[versão]/main/pg_hba.conf
```

Substitua `[versão]` pela versão do PostgreSQL que você instalou.

2 - Edite o arquivo para ajustar as configurações de autenticação conforme necessário, permitindo o acesso ao banco de dados pelo usuário criado.

3 - Após realizar as alterações, reinicie o serviço PostgreSQL para que as mudanças entrem em vigor:

```bash
sudo service postgresql restart
```

## Utilizando os scripts

### 1 - Criar o Banco de Dados e Inserir Dados de Exemplo

Crie as tabelas e insera os dados de exemplo a partir do arquivo db_contas.sql com o comando:

```bash
psql -U seu_usuario -d db_contas -f db_contas.sql
```

### 2 - Fazer o Backup do Banco de Dados

Use o script dump_db_contas_script.sh para criar um backup do banco de dados db_contas com o comando:

```bash
./dump_db_contas_script.sh
```

Este script gera um arquivo de backup de nome db_contas.bkp.

### 3 - Excluir as Tabelas

Para simular uma situação de perda de dados, exclua as tabelas do banco de dados:

```bash
psql -U seu_usuario -d db_contas -c "DROP TABLE IF EXISTS users, wallets CASCADE;"
```

### 4 - Restaurar o Banco de Dados

Restaure o banco de dados a partir do backup, com o script restore_db_contas_script.sh:

```bash
./restore_db_contas_script.sh
```

# Verificando execução de JBoss e Tomcat

### 1 - Verificar o Status do Tomcat

1 - Execute o script de verificação do Tomcat:

```bash
./is_tomcat_running.sh
```

### 2 - Verificar o Status do JBoss

1. **Execute o script de verificação do JBoss**:

```bash
./is_jboss_running.sh
```

Este projeto foi desenvolvido como parte de um teste técnico e pode conter áreas a serem otimizadas. Sinta-se à vontade para explorar, modificar e contribuir. Busco sempre evoluir como desenvolvedor e ouvir outras opiniões e ideias.