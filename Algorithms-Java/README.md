# ECDSA + Fips 204 + Fips 205 em Java

## Requisitos

Ter java 17, ou mais recente, instalado. Verifique com:
```
java --version
```
#### Opcionalmente
Ter o Maven instalado. Verifique com:
```bash
mvn -v
```

## Instruções

É possível executar com o Maven ou com um script.

### Executando com Script

Execute o comando:
```
./experiment_run.sh
```

### Executando com Maven

<!-- - Entre no diretório __signature_algorithms-comparision__

```bash
cd signature_algorithms-comparision
``` -->

- Limpe e compile o projeto usando Maven, isso baixará a biblioteca Bouncy Castle, junto com as bibliotecas Maven.

```bash
mvn clean install
```
- Execute o projeto com.
```bash
mvn exec:java
```

## Resultados
- Verifique os resultados no diretório [results](results)
