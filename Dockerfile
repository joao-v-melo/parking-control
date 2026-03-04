# Imagem com Java 17
FROM eclipse-temurin:17-jdk-jammy

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia o jar gerado pelo Maven
COPY target/parking-control-0.0.1-SNAPSHOT.jar app.jar

# Porta da aplicação
EXPOSE 8080

# Comando para iniciar a aplicação
ENTRYPOINT ["java","-jar","app.jar"]