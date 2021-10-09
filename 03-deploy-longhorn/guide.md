### Ref
```
https://longhorn.io/docs/1.2.2/deploy/install/install-with-helm/
```

## Installation Requirements
### Installing open-iscsi
```
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.2.2/deploy/prerequisite/longhorn-iscsi-installation.yaml
```

### Installing NFSv4 client
```
kubectl apply -f https://raw.githubusercontent.com/longhorn/longhorn/v1.2.2/deploy/prerequisite/longhorn-nfs-installation.yaml

```

## Install with Helm

### 1. Add the Longhorn Helm repository:
```
helm repo add longhorn https://charts.longhorn.io
```

### 2. Fetch the latest charts from the repository:
```
helm repo update
```

### 3. To install Longhorn with Helm 3, use these commands:
```
kubectl create namespace longhorn-system
helm install longhorn longhorn/longhorn --namespace longhorn-system
```

### 4. To confirm that the deployment succeeded, run:
```
kubectl -n longhorn-system get pod
```

### 5.To enable access to the Longhorn UI
```
 you will need to set up an Ingress controller. Authentication to the Longhorn UI is not enabled by default. For information on creating an NGINX Ingress controller with basic authentication, refer to this section.
```

### 6.Access the Longhorn UI using these steps.
```
ref: https://longhorn.io/docs/1.2.2/deploy/accessing-the-ui/
```