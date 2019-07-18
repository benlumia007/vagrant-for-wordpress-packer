.PHONY: virtualbox parallels hyperv

default: virtualbox

virtualbox: virtualbox/ubuntu-18.04-amd64.json
	packer build -only=virtualbox-iso virtualbox/ubuntu-18.04-amd64.json

parallels: parallels/ubuntu-18.04-amd64.json
	packer build -only=parallels-iso parallels/ubuntu-18.04-amd64.json

hyperv: hyperv/ubuntu-18.04-amd64.json
	packer build -only=hyperv-iso hyperv/ubuntu-18.04-amd64.json

clean:
	rm -rf builds/*.box