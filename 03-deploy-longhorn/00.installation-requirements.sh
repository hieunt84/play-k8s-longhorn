#!/bin/sh

# 1. Installing open-iscsi
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.2.2/deploy/prerequisite/longhorn-iscsi-installation.yaml

# 2. Installing NFSv4 client
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.2.2/deploy/prerequisite/longhorn-nfs-installation.yaml