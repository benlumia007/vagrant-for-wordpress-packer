.PHONY: virtualbox parallels hyperv

default: virtualbox

virtualbox: virtualbox/ubuntu-18.04-amd64.json
	packer build virtualbox/ubuntu-18.04-amd64.json