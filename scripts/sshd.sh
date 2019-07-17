#!/bin/sh -eux

sshd_config="/etc/ssh/sshd_config"

# ensure that there is a trailing newline before attempting to concatenate
sed -i '/UseDNS no/s/^#//g' "${sshd_config}"