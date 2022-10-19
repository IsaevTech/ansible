#!/bin/bash
ansible-playbook --vault-password-file=../.vault --inventory=../inv 01-install.yml
ansible-playbook --vault-password-file=../.vault --inventory=../inv 02-configure-server.yml
ansible-playbook --vault-password-file=../.vault --inventory=../inv 03-configure-client.yml
