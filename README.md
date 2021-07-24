# Not perfect k8s installer (wip)
```
Not recommended for production usage.
```
I make this installer just for fun.

## Prerequisites
- Baremetal or virtual nodes. You may create nodes with vagrantfiles from inventory_examples catalog.
- Loadbalancer for kube-apiserver. You may use haproxy with example config from inventory_examples catalog.
- Ansible >= 2.9


## How to install k8s cluster
- Create inventory. You can use one from inventory_examples catalog.
- Run: ansible-playbook -i <inventory_file> site.yml

## Variables
Name                      |Default                      | Description
--------------------------|---------------              |------------
k8s_cluster_name          |kubernetes                   |k8s cluster name
k8s_loadbalancer          |127.0.0.1                    |ip or address of loadbalancer for kube-api-server
kubernetes_version        |1.21.0                       |version of kubernetes
kubernetes_upgrade        |false                        |Set `true` to upgrade k8s cluster
etcd_version              |3.4.15                       |ETCD version
etcd_upgrade              |false                        |Set `true`, if you want to upgrade ETCD cluster (doesn't tested)
ca_gen_ca_expiry          |876000h (100y)               |CA certificate expirity
ca_gen_kubernetes_expiry  |876000h (100y)               |k8s certificate expirity
ca_gen_names_c            |RU                           |CN for cert gen
ca_gen_names_l            |Moscow                       |Location for cert gen
ca_gen_names_st           |Moscow                       |State for cert gen
taint_master_nodes        |                             |Set `taint_master_nodes=yes`, when master and worker nodes are separated
cni                       |calico                       |CNI you need to install. Only Calico works for now
install_loadbalancer      |true                         |Set `install_loadbalancer=yes`, if you need to install loadbalancer for k8s services
loadbalancer              |                             |Loadbalancer you need to install. Only metallb works for now
metallb_pool              |192.168.70.50-192.168.70.100 | Pool of ip addresses for metallb
install_ingress_controller|true                         |Set `true` to install ingress controller
ingress_controller        |        |Ingress controller you want to install. For now only `nginx` is supported                   
nginx_ingress_provider    |        |nginx_ingress_provider could be baremetal (nodeport) or cloud. Nginx specific variable

## TODO
- add_controlplane_node playbook
- add_worker_node playbook
- update certs playbook
- openstack loadbalancer
- tests