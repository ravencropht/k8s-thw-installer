# Work in progress
### controlplane-kubeconfigs-gen
k8s_loadbalancer: loadbalancerip (there should be ip address of loadbalancer)
### worker-kubeconfigs-gen
k8s_loadbalancer: loadbalancerip (there should be ip address of loadbalancer)
k8s_cluster_name: "{{ os_project_name }}"
os_project_name: kubernetes
### kubectl role
kubernetes_version: 1.21.0
kubectl_version: {{ kubernetes_version }}
### etcd-bootstrap
etcd_version: 3.4.15
etcd_upgrade: false
### cfssl role
cfssl_version: 1.4.1
### ca-gen role
ca_gen_ca_expiry: 876000h
ca_gen_kubernetes_expiry: 876000h