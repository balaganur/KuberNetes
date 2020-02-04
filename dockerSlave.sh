sudo apt-get update
sudo apt install -y docker.io
sudo systemctl enable docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt install -y curl
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt install -y kubeadm
sudo swapoff -a
sudo hostnamectl set-hostname slave-1
sudo kubeadm join 172.31.11.225:6443 --token dh320x.ls67jdi0cds4omjd --discovery-token-ca-cert-hash sha256:28df858e8fb5669932a866f4ef877deaf2466449aac98ae08ee930bfcd1829e6
