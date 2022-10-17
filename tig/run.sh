#!/bin/bash
ansible-playbook --vault-password-file=../.vault --inventory=../inv 01-influxdb.yml
ansible-playbook --vault-password-file=../.vault --inventory=../inv 02-telegraf.yml
ansible-playbook --vault-password-file=../.vault --inventory=../inv 03-grafana.yml
