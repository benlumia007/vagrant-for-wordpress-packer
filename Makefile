.PHONY: virtualbox parallels hyperv

default: virtualbox

virtualbox: virtualbox/ubuntu-18.04-amd64.json
	packer build virtualbox/ubuntu-18.04-amd64.json

parallels: parallels/ubuntu-18.04-amd64.json
	packer build parallels/ubuntu-18.04-amd64.json

hyperv: hyperv/ubuntu-18.04-amd64.json
	packer build hyperv/ubuntu-18.04-amd64.json