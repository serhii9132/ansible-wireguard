#!/bin/bash

LOG_DIR="./logs"
TIMESTAMP=$(date +"%Y_%m_%d_%H-%M-%S")
LOG_FILE="${LOG_DIR}/ansible_${TIMESTAMP}.log"
ENV_FILE="./.env"

if [ ! -f $ENV_FILE ]; then
    echo "File .env doesn't exist"
    exit 1
fi

export ANSIBLE_LOG_PATH="$LOG_FILE"
source $ENV_FILE

mkdir -pv "$LOG_DIR"

ansible-playbook playbook.yaml -vvvv