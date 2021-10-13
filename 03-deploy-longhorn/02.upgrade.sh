#!/bin/sh

# Fetch the latest charts from the repository
helm repo update

helm upgrade longhorn longhorn/longhorn --namespace longhorn-system \
-f ./values.yaml

