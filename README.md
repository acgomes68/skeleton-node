![Badge](https://img.shields.io/github/repo-size/tgmarinho/README-ecoleta?style=plastic)
![Badge](https://img.shields.io/badge/Docker-Latest-%232496ED?style=plastic&logo=Docker)
![Badge](https://img.shields.io/badge/Alpine-Latest-%230D597F?style=plastic&logo=Alpine-Linux)
![Badge](https://img.shields.io/badge/Node-LTS^12.18.4-%23339933?style=plastic&logo=Node.js)
![Badge](https://img.shields.io/badge/GrapQL-^15.3.0-%23e10098?style=plastic&logo=GraphQL)
![Badge](https://img.shields.io/badge/Postgres-v11-%23336791?style=plastic&logo=PostgreSQL)
![Badge](https://img.shields.io/badge/MongoDB-v11-%2347A248?style=plastic&logo=MongoDB)
![Badge](https://img.shields.io/badge/Redis-v11-%23DC382D?style=plastic&logo=Redis)
![Badge](https://img.shields.io/badge/license-MIT-brightgreen?style=plastic)

<h4 align="center"><b>skeleton-node</b> | <b>Em construção...</b></h4>

## **skeleton-node** ##
### Skeleton NodeJS-GraphQL-Postgres-MongoDB-Redis-Docker ###

---

## **Descrição** ##
Esse é um modelo inicial para desenvolvimento de **API's RESTful** que pode ser utilizado com **Docker** tendo como linguagem base o **NodeJS** acessando uma base relacional **Postgres** e bases não relacionais **MongoDB** e **Redis** via **GraphQL**. Na implementação com **Docker** é utilizada uma imagem **NodeJS-LTS** instalada em uma distribuição **GNU/Linux Alpine**.

---

**Tabela de conteúdos**
=================
<!--ts-->
* [Descrição](#Descrição)
    * [Funcionalidades](#Funcionalidades)
    * [Arquitetura](#Arquitetura)
    * [Modelo de dados](#Modelo-de-dados)
* [Instalação](#Instalação)
    * [Pré Requisitos](#Pré-Requisitos)
    * [Opcional](#Opcional)
    * [Clonando o projeto](#Clonando-o-projeto)
    * [Árvore de diretórios](#Árvore-de-diretórios)
    * [Atalhos de comandos](#Atalhos-de-comandos)
    * [Primeira execução](#Primeira-execução)
* [Utilização](#Utilização)
* [Dependências](#Dependências)
* [Desinstalação](#Desinstalação)
* [Tecnologias](#Tecnologias)
* [Referências](#Referências)
<!--te-->

---

### **Funcionalidades** ###

- [x] Estrutura básica<br />
- [x] Dockerfile<br />
- [x] Docker-compose<br />
- [x] Atalhos de comandos com Make<br />
- [x] Imagem pequena com Alpine<br />
- [x] Padronização e estilização do código<br />
- [x] Utilização de variáveis de ambiente<br />
- [x] Persistência de dados em volume do Docker<br />
- [x] Restart automático dos serviços após alteração do código<br />
- [x] Implementação de ES6 em todo o código<br />
- [x] Validação de conteúdo postado<br />
- [x] Tratamento de erros e exceções<br />
- [x] ORM para persistência de dados<br />
- [x] Atalhos de comandos com Make<br />
- [x] Processo automático de instalação e desinstalação<br />
- [x] Atalho para atualização de dependências<br />
- [x] Atalho para visualização de logs com atualização automática<br />
- [x] Utilização de migrations e seeds<br />
- [ ] Ambiente gráfico integrado para teste dos serviços<br />
- [ ] Implementação de tipagem e OOP com Typescript<br />
- [ ] Path Mapping para imports<br />
- [ ] Testes unitários<br />

---

### **Arquitetura** ###
Foi desenvolvida uma arquitetura voltada para **microsserviços** com cada um deles separados em **containers Docker** que podem ser escalados mediante a demanda necessária. A estrutura básica foi desenvolvida em **NodeJS com Express**, ambos responsáveis pela gestão e roteamento das requisições **HTTP usando padrão REST**.
Foi criada uma pequena estrutura de dados relacionais com **Postgres** e não relacionais com **MongoDB** e **Redis**, sendo que a comunicação da camada de código com as bases de dados se faz através da abstração do **GraphQL**.

---

### **Modelo de dados** ###

![Screenshot](public/screenshots/modelo_dados.png)

---

## **Instalação** ##
O processo de instalação envolve basicamente a **clonagem desse projeto**  através do **Git** (ver abaixo) e a **execução de um simples comando**. Porém, para que tudo funcione adequadamente é fundamental que todos os **pré-requisitos** sejam atendidos integralmente.

---

### **Pré-Requisitos** ###
Para que seja realizada a instalação, construção, execução e testes são necessárias as seguintes tecnologias previamente instaladas que devem ser verificadas através do **terminal  (Linux / MacOS)** ou **CommandShell/ CMD / PowerShell  (Windows)**:

- **Git**

    Para confirmar se já está instalado:<br />
    ```
    git --version
    ```

    Caso ainda não esteja instalado:<br />
    https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git
<br /><br />

- **Make**

    Para confirmar se já está instalado:<br />
    ```
    make --version
    ```

    Caso ainda não esteja instalado:<br />

    - **GNU/Linux**<br />
    ```
    sudo apt-get install build-essential
    ```

    - **Windows**<br />
    http://gnuwin32.sourceforge.net/packages/make.htm
    <br /><br />

- **Docker:**

    Para confirmar se já está instalado:<br />
    ```
    docker --version
    ```

    Caso ainda não esteja instalado:<br />
    https://www.docker.com/community-edition#/download


- **Docker-compose**:
    Normalmente, ao instalar o Docker, o Compose também é instalado. Por via das dúvidas, caso queira confirmar se já está instalado:<br />
    ```
    docker-compose --version
    ```

    Caso ainda não esteja instalado:<br />
    https://docs.docker.com/compose/install/

---

### **Opcional** ####
Além dos pré-requisitos descritos acima seria interessante a utilização de um editor de texto, de preferência uma IDE adequada para desenvolvimento e codificação de software, como sugestão, o [vsCode](https://code.visualstudio.com/).
Outra sugestão que não é obrigatória, mas pode ajudar, seria a instalação do programa ***curl***:
- **GNU/Linux**
    ```
    sudo apt-get install curl
    ```
- **Windows**<br />
    https://curl.haxx.se/windows/

---

### **Clonando o projeto** ###
Considerando que todos os passos descritos acima foram realizados, abrir o terminal e acessar o local onde deseja instalar o projeto, por exemplo, o **próprio diretório do usuário**:<br />
```
# Acessar diretório do usuário
$ cd ~

# Realizar o clone desse projeto em um diretório local com o nome desejado, por exemplo "novo-projeto"
$ git clone https://github.com/acgomes68/skeleton-node.git novo-projeto
```

Se tudo estiver OK, todos os arquivos do projeto serão baixados para o diretório /home/***seu-usuario***/**novo-projeto**, de modo que a estrutura fique como demonstrado abaixo.

---

### **Árvore de diretórios** ###
```
├── node_modules
├── public
│   └── screenshots
├── src
│   ├── app
│   │   ├── controllers
│   │   │   └── UserController.js
│   │   └── models
│   │       └── User.js
│   ├── config
│   │   └── database.js
│   ├── database
│   │   ├── migrations
│   │   │   └── 20200828092516-create-users.js
│   │   ├── seeds
│   │   │   └── 20200901012052-basic-user.js
│   │   └── index.js
│   ├── app.js
│   ├── routes.js
│   └── server.js
├── .dockerignore
├── .editorconfig
├── .env
├── .env.example
├── .eslintrc.js
├── .gitignore
├── .prettierrc
├── .sequelizerc
├── docker-compose.yml
├── Dockerfile
├── Makefile
├── nodemon.json
├── package.json
├── README.md
└── yarn.lock
```

---

### **Atalhos de comandos** ###
Para facilitar a utilização foram criados alguns atalhos com as principais funcionalidades. Para ter acesso aos atalhos é necessário certificar-se que está no diretório raiz do projeto usando o comando abaixo no terminal:<br />
```
# Acessar diretório raiz do projeto criado, conforme exemplo...
$ cd ~/novo-projeto

# Listar todos os atalhos disponíveis executar
$ make help
```

Deve aparecer algo como a imagem abaixo.
```
usage: make COMMAND

Commands:
  clean      Drop database and clean dependencies
  help       Show this help screen
  install    Create and start containers, create database, run migrations and seeds
  logs       Watch log output
  restart    Restart all containers
  start      Start all containers
  status     Show containers current status
  stop       Stop all services
  test       Run eslint and application unit tests
  uninstall  Stop and clear all services
  update     Update Node dependencies with yarn
```

---

### **Primeira execução** ###
Através de qualquer editor de texto, atualizar as informações do arquivo **.env.example** que está na **raiz do projeto** e renomeá-lo para **.env.**. Exemplo de preenchimento:
```
# Node settings
NODE_ENV=development

# Application settings
APP_NAME=novo_projeto
APP_URL=http://localhost
APP_PORT=3333
APP_HOST=0.0.0.0

# PostgreSQL settings
POSTGRES_HOST=postgres
POSTGRES_USER=postgres
POSTGRES_PASSWD=docker
POSTGRES_DATABASE=novo_projeto
POSTGRES_PORT=5432
```
Após isso, conforme descrito no item anterior, através do **terminal** executar:<br />
```
$ make install
```
Após o final da instalação, acessar os serviços através do endpoint:<br />
http://localhost:3333/

Por exemplo, para o serviço users (instalado por padrão):<br />
http://localhost:3333/users

Esse passo pode ser realizado através do navegador, pelo ambiente gráfico de teste da API ou até mesmo pelo terminal através do comando **curl** caso possua o programa instalado.

**Visão do navegador**<br />
![Preview-navegador](./public/screenshots/preview-navegador.png)

**Visão através do comando curl**<br />
```
$ curl http://localhost:3333/users
[{"id":1,"name":"test user","email":"user@test.com","createdAt":"2020-09-25T03:33:09.490Z","updatedAt":null}]%
```

---

## **Utilização** ##
A partir do momento que o projeto foi instalado ele é **automaticamente iniciado**. Porém, há a possibilidade de interação manual, de modo que se pode parar a execução do projeto, reiniciá-lo, executar testes, atualizar dependências, etc. A seguir, a demonstração de algumas das opções citadas, sempre através do terminal a partir do diretório raiz do projeto:
```
# Iniciar a execução do projeto manualmente
$ make start

# Parar a execução o projeto manualmente
$ make stop

# Verificar padrão de sintaxe e formatação, teste unitário e cobertura do código
$ make test

# Verificar o status dos serviços que compõem o projeto
$ make status

# Visualizar os logs dos serviços atualizados automaticamente
$ make logs
```

---

### **Dependências** ###
Assim que o projeto é instalado, as dependências iniciais são as seguintes:
- Gerais
    - **cors**: autentidação no redirecionamento de domínio;
    - **dotenv**: leitura de variáveis de ambiente a partir de arquivo .env;
    - **express**: roteamento e manipulação HTTP para API REST;
    - **pg**: apoio na utilização do Postgres;
    - **sequelize**: persistência de dados para Postgres;
    - **youch**: tratamento de erros e exceções;
    - **yup**: validação de dados postados;

- Específicas do ambiente de desenvolvimento
    - **eslint**: formatação e validação de sintaxe;
    - **nodemon**: monitora o serviço HTTP do node;
    - **prettier**: formatação e estilização do código;
    - **sequelize-cli**: execução de testes e migrations através da persistência com Postgres;
    - **sucrase**: adaptação do código para ES6;

Mas, caso exista a necessidade de **adicionar ou remover dependências**, utilizar o **yarn** através do terminal. Como exemplo de instalação e remoção de pacote será utilizado o **socket.io**:
```
# Instalar o pacote socket.io como dependência do projeto
$ yarn add socket.io

# Atualizar lista de dependências do projeto
$ make update

# Remover o pacote socket.io como dependência do projeto
$ yarn remove socket.io

# Atualizar lista de dependências do projeto
$ make update
```
Repare que, caso a **lista de dependências do projeto seja alterada** através da instalação ou remoção de algum pacote também se faz **necessária a atualização da lista de dependências do container**. Isso acontece pois a execução do **yarn** nos exemplos acima **atua especificamente no diretório local da instalação**, mas **não age sobre a instalação que está no container**, pois **não há sincronização de volumes na pasta node_modules** (repare o arquivo .dockerignore).

---

## **Desinstalação** ##
Para **remoção do projeto**, considerando que esteja no diretório raiz do mesmo, executar através do terminal:<br />
```
$ make uninstall
```
Após a execução do comando acima as **modificações realizadas após a instalação serão perdidas**, mas **ainda haverá a possibilidade da recuperar o projeto para o seu estado inicial** seguindo as mesmas orientações descritas no item [Primeira execução](#Primeira-execução).

Mas para a **remoção total**, considerando que esteja no diretório raiz do mesmo e usando o nome dado no nosso exemplo **novo-projeto**, executar através do terminal:<br />
```
$ cd ..
$ rm -rf novo-projeto
```
A partir desse ponto, o **projeto estará totalmente desinstalado** e somente realizando todo o processo novamente poderá retornar ao estado inicial.

---

## **Tecnologias** ##
- [**NodeJS**](https://nodejs.org/en/): linguagem **Javascript** padrão **ES6** voltada para o **backend** e a construção das **API's**;
- [**Postgres**](https://www.postgresql.org/): banco de dados **relacional**;
- [**MongoDB**](https://www.mongodb.com/): banco de dados **não-relacional** que usa **documentos JSON** para os dados;
- [**Redis**](https://redis.io/): banco de dados **não-relacional** padrão **chave-valor** normalmente utilizado para **filas e cache**;
- [**GraphQL**](https://graphql.org/): banco de dados **não-relacional** padrão **chave-valor** normalmente utilizado para **filas e cache**;
- [**Docker**](https://www.docker.com/): plataforma que facilita a criação e a administração de pacotes de software em ambientes isolados e padronizados;

---

## **Referências** ##
[Iniciando com GraphQL no NodeJS e ExpressJS](https://blog.rocketseat.com.br/iniciando-graphql-nodejs-expressjs/)<br />
[Gerenciando variáveis ambiente no NodeJS](https://blog.rocketseat.com.br/variaveis-ambiente-nodejs/)<br />
[Teste unitário com Jest](https://www.devmedia.com.br/teste-unitario-com-jest/41234)<br />
[Por que escrever testes automatizados se eu mesmo posso testar?](https://blog.rocketseat.com.br/por-que-escrever-testes-automatizados/)<br />
[Execução em tempo de desenvolvimento dos projetos em Node.js](https://blog.rocketseat.com.br/ferramentas-de-compilacao-execucao-em-tempo-de-desenvolvimento-dos-projetos-em-node-js/)<br />
[Como fazer um bom README](https://blog.rocketseat.com.br/como-fazer-um-bom-readme/)<br />

---

## **Autor** ##
 <img style="border-radius: 50%;" src="https://avatars0.githubusercontent.com/u/38814530?s=460&v=4" width="100px;" alt=""/>

 <sub>**Antonio Carlos Gomes**</sub>
 <br />

[![Linkedin Badge](https://img.shields.io/badge/-Antonio-blue?style=flat-square&logo=Linkedin&logoColor=white&link=https://www.linkedin.com/in/antonio-carlos-gomes/)](https://www.linkedin.com/in/antonio-carlos-gomes/)
[![Gmail Badge](https://img.shields.io/badge/-acgomes68@gmail.com-c14438?style=flat-square&logo=Gmail&logoColor=white&link=mailto:acgomes68@gmail.com)](mailto:acgomes68@gmail.com)

---

## **Licença** ##

Este projeto esta sobe a licença [MIT](./LICENSE).

Feito por Antonio Carlos Gomes [Entre em contato!](https://www.linkedin.com/in/antonio-carlos-gomes/)

---
