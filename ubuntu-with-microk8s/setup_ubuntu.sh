#!/bin/sh
set -e

SCRIPT=`basename "$0"`

sudo apt-get update -y
sudo apt-get upgrade -y

echo "[INFO] [${SCRIPT}] Setup microk8s"
sudo snap install microk8s --classic
sudo microk8s.start
sudo microk8s.enable dns helm
sudo snap install kubectl --classic
sudo sh -c '/snap/bin/microk8s.config > /home/ubuntu/.kube/kubeconfig'
sudo chown ubuntu /home/ubuntu/.kube
sudo usermod -a -G microk8s ubuntu
echo "alias k='kubectl'" >> /home/ubuntu/.bashrc