#!/bin/sh

# 1. Add the Longhorn Helm repository
helm repo add longhorn https://charts.longhorn.io

# 2/ Fetch the latest charts from the repository
helm repo update

# 3. Install Longhorn with Helm 3, use these commands:
kubectl create namespace longhorn-system
helm install longhorn longhorn/longhorn --namespace longhorn-system \
--version 1.1.0 \
-f ./values.yaml

# 4. To confirm that the deployment succeeded, run:
kubectl -n longhorn-system get pod