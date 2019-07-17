#!/bin/sh -eux

noroot() {
    sudo -EH -u "vagrant" "$@";
}

# Create a .rnd file due to OpenSSL issue.
noroot touch .rnd;

