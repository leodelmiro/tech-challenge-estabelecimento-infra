# Tech Challenge - Estabelecimento

# Índice

* [Breve Descrição](#Breve-Descrição)
* [Tecnologias Utilizadas](#Tecnologias-Utilizadas)
* [Índice](#índice)
* [Desenho Solução](#Desenho-Solução)
* [Estrutura do Projeto](#Estrutura-do-Projeto)
* [Rodando o Projeto Local](#Rodando-o-Projeto-Local)

## Breve Descrição

Aplicação se trata de um Projeto Fiap Tech Challenge - Software Architecture, simulando um projeto de um estabelecimento
de pedidos (fast-food).

Este repositório é referente a Infra do repositório (Centralizando a subida para AWS da aplicação).

### Demais repositórios
- https://github.com/leodelmiro/tech-challenge-estabelecimento-app
- https://github.com/leodelmiro/tech-challenge-estabelecimento-db
- https://github.com/leodelmiro/tech-challenge-estabelecimento-lambda-authorizer

## Tecnologias Utilizadas

- Terraform
- AWS
- Kubernetes

## Desenho Solução

### Infra AWS

![Tech Challenge Drawio Infra](./desenhos/infraawsdrawio.png)

## Estrutura do Projeto

## Rodando o Projeto Local

### 1. Pré-requisitos

Certifique-se de ter as seguintes ferramentas instaladas:

- Terraform
- AWS CLI

### 2. Clonar o Repositório

Clone o repositório do projeto:

```sh
git clone https://github.com/leodelmiro/tech-challenge-estabelecimento-infra
```

### 3. Executar o Script de Setup

O projeto inclui um script de setup (`setup.sh`) que automatiza o processo de construção e execução do projeto. O script
realiza as seguintes operações:

- 

Para executar o script, siga os passos abaixo:

#### macOS e Linux

1. **Tornar o Script Executável**:

    ```sh
    chmod +x setup.sh
    ```

2. **Executar o Script**:

    ```sh
    ./setup.sh
    ```

#### Windows

1. **Executar o Script**:

   No PowerShell ou Git Bash:

    ```sh
    ./setup.sh
    ```