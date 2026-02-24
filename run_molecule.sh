#!/bin/bash

set -e

LOG_DIR="$(pwd)/logs"
TIMESTAMP=$(date +"%Y_%m_%d_%H-%M-%S")
LOG_FILE="${LOG_DIR}/ansible_${TIMESTAMP}.log"

mkdir -pv "$LOG_DIR"
export ANSIBLE_LOG_PATH="$LOG_FILE"

molecule "$@"