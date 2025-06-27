#!/bin/bash

# URL para o arquivo JAR do Bouncy Castle
BC_URL="https://repo1.maven.org/maven2/org/bouncycastle/bcprov-jdk18on/1.80/bcprov-jdk18on-1.80.jar"

# Diretório onde o JAR será salvo
LIBS_DIR="./lib"

# Nome do arquivo JAR
BC_JAR_FILE="bcprov-jdk18on-1.80.jar"

# Caminho completo para o JAR
BC_JAR="$LIBS_DIR/$BC_JAR_FILE"

# Diretório de código fonte
SRC_DIR="src/main/java/com/sbseg2025"

# Classe principal a ser executada
MAIN_CLASS="com.sbseg2025.Calculations"

# Criar o diretório libs se não existir
mkdir -p "$LIBS_DIR"

# Baixar o arquivo JAR se ele não existir
if [ ! -f "$BC_JAR" ]; then
  echo "Baixando o arquivo JAR do Bouncy Castle..."
  wget -O "$BC_JAR" "$BC_URL"
  if [ $? -ne 0 ]; then
    echo "Erro ao baixar o arquivo JAR. Verifique a URL e a conexão."
    exit 1
  fi
else
  echo "Arquivo JAR do Bouncy Castle já existe."
fi

# Compilar os arquivos Java
javac -cp "$BC_JAR" "$SRC_DIR/Calculations.java" "$SRC_DIR/Configurations.java" 

echo "Compilado"

# Executar a classe principal
java -cp "src/main/java:$BC_JAR" "$MAIN_CLASS"
