#!/bin/bash

# Ruta base donde se encuentran los archivos de Kubernetes
BASE_DIR="target/kubernetes/"

# Nombres de archivos
ORIGINAL_FILE="${BASE_DIR}kubernetes.yml"
BLUE_FILE="${BASE_DIR}kubernetes-blue.yml"
GREEN_FILE="${BASE_DIR}kubernetes-green.yml"

# Copia el archivo original a versiones blue y green
cp "$ORIGINAL_FILE" "$BLUE_FILE"
cp "$ORIGINAL_FILE" "$GREEN_FILE"

# Actualizar kubernetes-blue.yml para el entorno Blue
sed -i '' 's/name: quarkus-hello-world/name: quarkus-hello-world-blue/g' "$BLUE_FILE"
sed -i '' 's/app.kubernetes.io\/version: 1.0.0-SNAPSHOT/app.kubernetes.io\/version: blue/g' "$BLUE_FILE"
sed -i '' 's/version: 1.0.0-SNAPSHOT/version: blue/g' "$BLUE_FILE"
sed -i '' 's|116858595749.dkr.ecr.eu-west-1.amazonaws.com/quarkus:1.0.0-SNAPSHOT|116858595749.dkr.ecr.eu-west-1.amazonaws.com/quarkus:blue|g' "$BLUE_FILE"

# Actualizar kubernetes-green.yml para el entorno Green
sed -i '' 's/name: quarkus-hello-world/name: quarkus-hello-world-green/g' "$GREEN_FILE"
sed -i '' 's/app.kubernetes.io\/version: 1.0.0-SNAPSHOT/app.kubernetes.io\/version: green/g' "$GREEN_FILE"
sed -i '' 's/version: 1.0.0-SNAPSHOT/version: green/g' "$GREEN_FILE"
sed -i '' 's|116858595749.dkr.ecr.eu-west-1.amazonaws.com/quarkus:1.0.0-SNAPSHOT|116858595749.dkr.ecr.eu-west-1.amazonaws.com/quarkus:green|g' "$GREEN_FILE"
