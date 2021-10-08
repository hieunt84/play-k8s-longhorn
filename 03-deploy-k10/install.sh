#!/bin/sh

# add repo
helm repo add kasten https://charts.kasten.io/
helm repo update

# install chart
kubectl create namespace kasten-io
helm install k10 kasten/k10 \
--namespace=kasten-io \
--set global.persistence.storageClass=longhorn \
--set prometheus.server.persistentVolume.enabled=false


