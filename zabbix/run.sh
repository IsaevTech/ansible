#!/bin/bash
export ANSIBLE_PIPELINING=True
ansible-playbook --vault-password-file=../.vault --inventory=../inv 01-postgresql.yml
ansible-playbook --vault-password-file=../.vault --inventory=../inv 02-zabbix-server.yml
ansible-playbook --vault-password-file=../.vault --inventory=../inv 03-zabbix-web.yml
ansible-playbook --vault-password-file=../.vault --inventory=../inv 04-zabbix-agent2.yml
