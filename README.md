# Operationalize a Machine Learning Microservice API

[![CircleCI](https://circleci.com/gh/quincysting/project4.svg?style=svg)](https://circleci.com/gh/quincysting/project4)

## Setup environment 
1. Create virtual environment venv and activate it
2. Run make install to intall all necessary dependencies
3. Run make lint to check project code
```sh
(venv) 192-168-1-105:project4 quincysting$ make lint
```

## See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
hadolint Dockerfile

## This is a linter for Python source code linter: https://www.pylint.org/
> This should be run from inside a virtualenv
```sh
pylint --disable=R,C,W1203,W1202 app.py
```
------------------------------------
Your code has been rated at 10.00/10

## Configure Kubernetes to run locally at MAC
1. brew cask install virtualbox
2. brew cask install mininuke
3. minibuke start
4. minikube service web
5. kubectl get nodes
6. kubectl describe node project4-6bcf9d794c-9gjpb
7. minikube dashboard

```sh
192-168-1-105:project4 quincysting$ kubectl config view
apiVersion: v1
clusters:
- cluster:
    certificate-authority: /Users/quincysting/.minikube/ca.crt
    server: https://192.168.64.2:8443
  name: minikube
contexts:
- context:
    cluster: minikube
    user: minikube
  name: minikube
current-context: minikube
kind: Config
preferences: {}
users:
- name: minikube
  user:
    client-certificate: /Users/quincysting/.minikube/client.crt
    client-key: /Users/quincysting/.minikube/client.key
```

## Run app.py
1. Standalone: 
```sh
python3 app.py
```
2. In docker: 
```sh
bash run_docker.sh
bash make_prediction.sh
Get output file: output_txt_files/docker_out.txt
```
Upload to docker: 
```sh
bash upload_docker.sh
```
3. In Kubernetes:
```sh
bash run_kubernetes.sh
bash make_prediction.sh
```
Get output file: 
```sh
output_txt_files/kubernetes_out.txt
```