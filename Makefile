build:
	AWS_PROFILE=sandbox packer build ubuntu-with-microk8s/ubuntu-with-microk8s.json

generate-tfvars:
	bin/generate-tfvars

deploy:
	terraform apply

deploy-sample:
	./bin/deploy-sample

ssh:
	./bin/ssh

show-ip:
	@./bin/ip

show-sample-url:
	@echo "http://$$(./bin/ip):$$(./bin/get-node-port hello-node)"

open-sample-url:
	@open "http://$$(./bin/ip):$$(./bin/get-node-port hello-node)"