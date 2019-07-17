#!/bin/sh -eux

# Add Git Repository for Latest Version.
sudo add-apt-repository ppa:git-core/ppa -y;

# Update the package list
sudo apt-get update -y;

# Upgrade all installed packages including kernel and kernel header
sudo apt-get upgrade -y;