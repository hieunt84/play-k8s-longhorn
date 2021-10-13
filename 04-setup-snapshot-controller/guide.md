### Ref
```
https://longhorn.io/docs/1.2.2/snapshots-and-backups/csi-snapshot-support/enable-csi-snapshot-support/
```

### Step 1
```
kubectl apply -f ./01-crd
```

### Step 2
```
kubectl create -f ./02-snapshot-controller
```
