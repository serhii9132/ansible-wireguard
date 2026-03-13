#!/bin/bash

set -e

echo "Select the OS to deploy:"
echo "  1) debian-12"
echo "  2) debian-13"
echo "  3) ubuntu-22.04"
echo "  4) ubuntu-24.04"
echo ""

read -p "Enter a number (1-4): " choice

case $choice in
    1)
        export os="debian-12"
        ;;
    2)
        export os="debian-13"
        ;;
    3)
        export os="ubuntu-22.04"
        ;;
    4)
        export os="ubuntu-24.04"
        ;;
    *)
        echo "Error: Invalid input. Please enter a number from 1 to 4."
        exit 1
        ;;
esac

LOG_DIR="$(pwd)/logs"
TIMESTAMP=$(date +"%Y_%m_%d_%H-%M-%S")
LOG_FILE="${LOG_DIR}/ansible_${TIMESTAMP}_${os}.log"

mkdir -pv "$LOG_DIR"
export ANSIBLE_LOG_PATH="$LOG_FILE"

molecule "$@"