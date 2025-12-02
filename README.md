
# Projeto SQL VidaFit

Este repositório contém scripts SQL e uma página estática para documentar um mini-mundo de academia/treino usado para práticas de DML.

## Conteúdo
- `01_create_tables.sql` — Criação das tabelas (PostgreSQL)
- `02_insert_data.sql` — Inserts de exemplo para povoar o banco
- `03_select_queries.sql` — Consultas com JOIN, WHERE, ORDER BY, LIMIT
- `04_update_delete.sql` — Comandos UPDATE e DELETE com condições
- Páginas estáticas para GitHub Pages

## Como executar
1. Criar o banco (psql):
```bash
createdb vida_fit
psql -d vida_fit -f 01_create_tables.sql
psql -d vida_fit -f 02_insert_data.sql
```
2. Testar as consultas:
```bash
psql -d vida_fit -f 03_select_queries.sql
```
3. Aplicar operações de manutenção:
```bash
psql -d vida_fit -f 04_update_delete.sql
```

## Requisitos
- PostgreSQL 12+
- pgAdmin ou psql

## Licença
MIT
