#!/bin/bash 

echo "token"
kubectl -n kube-system describe secrets zabbix-user-token-t9rrw | grep "token:" | awk '{print $2}'

echo -e "\n API server url"
kubectl cluster-info | grep -i "Kubernetes master" | grep -o '[a-z]\{4,5\}:\/\/[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}:[0-9]\{1,5\}'