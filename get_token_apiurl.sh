#!/bin/bash 

echo -e "Token:\n"
kubectl -n kube-system describe secrets `kubectl -n kube-system get secrets | grep "zabbix" | awk '{print $1}'` | grep "token:" | awk '{print $2}'
echo -e "\nAPI server url:\n"
kubectl cluster-info | grep -i "Kubernetes master" | grep -o '[a-z]\{4,5\}:\/\/[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}.[0-9]\{1,3\}:[0-9]\{1,5\}'