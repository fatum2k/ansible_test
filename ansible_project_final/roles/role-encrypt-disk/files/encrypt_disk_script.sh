#!/bin/bash

DISK="/dev/$1"
MAPPER_NAME="${1}_encrypted"

# Check if disk is already encrypted
if [[ -b "/dev/mapper/${MAPPER_NAME}" ]]; then
    echo "Disk ${DISK} is already encrypted."
    exit 0
fi

# Encrypt the disk using LUKS
echo -n PASS | cryptsetup luksFormat --batch-mode "${DISK}"
echo -n PASS | cryptsetup luksOpen "${DISK}" "${MAPPER_NAME}"

# Create a filesystem on the encrypted disk
mkfs.ext4 "/dev/mapper/${MAPPER_NAME}"

# Mount the encrypted disk
mkdir -p "/mnt/${MAPPER_NAME}"
mount "/dev/mapper/${MAPPER_NAME}" "/mnt/${MAPPER_NAME}"
