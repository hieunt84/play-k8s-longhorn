#!/bin/sh

# Creat ns longhorn
kubectl create ns longhorn-system
kubectl config set-context --current --namespace longhorn-system

# 1. Installing open-iscsi
kubectl apply --namespace longhorn-system -f https://raw.githubusercontent.com/longhorn/longhorn/v1.2.2/deploy/prerequisite/longhorn-iscsi-installation.yaml

# 2. Installing NFSv4 client
kubectl apply --namespace longhorn-system -f https://raw.githubusercontent.com/longhorn/longhorn/v1.2.2/deploy/prerequisite/longhorn-nfs-installation.yaml