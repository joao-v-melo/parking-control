# 🚗 Parking Control API

API REST para controle de vagas de estacionamento desenvolvida com **Spring Boot**.

O projeto permite realizar operações completas de **CRUD** para gerenciamento de vagas de estacionamento, incluindo registro, consulta, atualização e remoção.

Além da API em si, o projeto também foi utilizado para praticar:

* Containerização com **Docker**
* Orquestração com **Docker Compose**
* Documentação automática da API com **Swagger / OpenAPI**

---

# 🛠️ Tecnologias utilizadas

* **Java 17**
* **Spring Boot**
* **Spring Data JPA**
* **PostgreSQL**
* **Docker**
* **Docker Compose**
* **Swagger / OpenAPI**
* **Maven**

---

# 📦 Estrutura do projeto

```
parking-control
│
├── src
│   ├── main
│   │   ├── java
│   │   └── resources
│   │
│   └── test
│
├── Dockerfile
├── docker-compose.yml
├── pom.xml
└── README.md
```

---

# ⚙️ Como executar o projeto

## 1️⃣ Pré-requisitos

Você precisa ter instalado:

* Docker
* Docker Compose
* Git (opcional)

---

## 2️⃣ Clonar o repositório

```bash
git clone https://github.com/seu-usuario/parking-control.git
```

Entrar na pasta do projeto:

```bash
cd parking-control
```

---

## 3️⃣ Gerar o build da aplicação

```bash
mvn clean package -DskipTests
```

Isso irá gerar o `.jar` dentro da pasta:

```
target/
```

---

## 4️⃣ Subir os containers

```bash
docker compose up --build
```

Isso irá iniciar:

* **API Spring Boot**
* **Banco PostgreSQL**

---

# 🌐 Acessando a aplicação

API:

```
http://localhost:8080
```

Banco PostgreSQL:

```
host: localhost
port: 5432
database: parking-control-db
user: postgres
password: admin
```

Você pode acessar usando ferramentas como:

* DBeaver
* pgAdmin

---

# 📑 Documentação da API

A documentação da API é gerada automaticamente usando **Swagger / OpenAPI**.

Acesse:

```
http://localhost:8080/swagger-ui.html
```

Ou

```
http://localhost:8080/swagger-ui/index.html
```

Lá é possível:

* visualizar todos os endpoints
* ver os modelos de dados
* testar requisições diretamente no navegador

---

# 🔗 Endpoints principais

Base URL:

```
/parking-spot
```

## Criar vaga

```
POST /parking-spot
```

Exemplo de body:

```json
{
  "parkingSpotNumber": "205B",
  "licensePlate": "ABC1234",
  "brandCar": "Toyota",
  "modelCar": "Corolla",
  "colorCar": "Black",
  "responsibleName": "Carlos Silva",
  "apartment": "205",
  "block": "B"
}
```

---

## Listar todas as vagas

```
GET /parking-spot
```

---

## Buscar vaga por ID

```
GET /parking-spot/{id}
```

---

## Atualizar vaga

```
PUT /parking-spot/{id}
```

---

## Deletar vaga

```
DELETE /parking-spot/{id}
```

---

# 🐳 Docker

O projeto utiliza dois containers:

### API

Container da aplicação Spring Boot.

### PostgreSQL

Banco de dados utilizado pela aplicação.

Todos os serviços são orquestrados pelo **docker-compose**.

---

# 🧪 Testando a API

Você pode utilizar ferramentas como:

* Insomnia
* Postman
* Swagger UI

---

# 📚 Créditos

Este projeto foi desenvolvido para fins de estudo.

A estrutura base da API foi inspirada no projeto da desenvolvedora **Michelli Brito**, utilizado como referência durante o aprendizado de **Spring Boot**.

A partir dessa base foram feitas algumas adaptações e melhorias, incluindo:

* Containerização com **Docker**
* Orquestração com **Docker Compose**
* Documentação da API com **Swagger**

Canal da Michelli Brito:

https://www.youtube.com/@MichelliBrito

---

# 👨‍💻 Autor

Desenvolvido por **João** como parte de estudos em:

* Spring Boot
* APIs REST
* Docker
* Documentação de APIs
