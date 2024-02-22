#!/bin/bash

# Define el directorio y los nombres de archivo
DIR="target/kubernetes"
ORIGINAL_FILE="${DIR}/kubernetes-green.yml"
MODIFIED_FILE="${DIR}/kubernetes-green-lb.yml"

# Hacer una copia del archivo original
cp $ORIGINAL_FILE $MODIFIED_FILE

# Modificar la copia para cambiar el tipo de servicio a LoadBalancer
sed -i '' 's/type: ClusterIP/type: LoadBalancer/' $MODIFIED_FILE

# Aplicar el archivo modificado al cluster de Kubernetes
kubectl apply -f $MODIFIED_FILE

echo "Servicio 'green' expuesto a través de un LoadBalancer."
