# Work in progress
### controlplane-cert-gen
k8s_loadbalancer: loadbalancerip (there should be ip address of loadbalancer)
### kubectl role
kubernetes_version: 1.21.0
kubectl_version: {{ kubernetes_version }}
### cfssl role
cfssl_version: 1.4.1
### ca-gen role
ca_gen_ca_expiry: 87600h
ca_gen_kubernetes_expiry: 87600h