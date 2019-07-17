#!/bin/sh -eux

# Set up password-less sudo for the vagrant user
echo 'vagrant ALL=(ALL:ALL) NOPASSWD:ALL' > /etc/sudoers.d/vagrant;
chmod 440 /etc/sudoers.d/vagrant;