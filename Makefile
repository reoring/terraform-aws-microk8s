build:
	AWS_PROFILE=sandbox packer build ubuntu-with-microk8s/ubuntu-with-microk8s.json

apply:
	terraform apply