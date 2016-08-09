# kpm-stackanetes

###Deploy Openstack on Kubernetes

k8s-resources from https://github.com/stackanetes/stackanetes

packages:

    stackanetes/stackanetes
    stackanetes/init

### Prepare nodes
Label kubernetes nodes

Persistent data (mariadb, zookeeper, rabbitmq) will be labeled as such:
```
kubectl label node minion1 persistent-control=yes
```
Non-persistent data stored on separate node preferable more than 1 node:
```
kubectl label node minion2 non-persistent-control=yes
```
Compute node will run nova-compute, the VMs. Currently you need to dedicate the host to these:
```
kubectl label node minion3 compute=yes
```

### Deploy
#### Install kpm
```
    pip install kpm
```
On first deployment only
```
    kpm deploy stackanetes/init
```
Deploy/Update stackanetes
```
    kpm deploy stackanetes/stackanetes
```

On the first deployment, it can take up to 15 minutes to get everything correctly initialized.
