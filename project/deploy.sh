#!/usr/bin/env bash
# deploy.sh — запуск полного пайплайна
set -euo pipefail

# Переменные
PLAYBOOK=deploy-docker.yml
INVENTORY=inventory.ini

echo "Запуск Ansible-развёртывания OrientDB..."
ansible-playbook -i "$INVENTORY" "$PLAYBOOK"
echo "Готово!"
