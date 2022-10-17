#!/bin/bash
ansible-playbook --vault-password-file=../.vault --inventory=../inv 01-apt-repos.yml
case "$1" in
"update") ansible-playbook --vault-password-file=../.vault --inventory=../inv 02-update-packages.yml ;;
esac
