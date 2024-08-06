# Ansible Role: Encrypt Non-Root Disk

## Description

This role checks for non-root partitioned disks on an Ubuntu system and encrypts them using LUKS. The role also verifies that the disk has been encrypted successfully.

## Requirements

- Ansible 2.9+ 
- Ubuntu system with at least one non-root partitioned disk.

## Role Variables

- `disk_name`: Name of the disk to be encrypted (e.g., `sdb1`). If not provided, the role will attempt to detect it.

## Usage

### Example Playbook

```yaml
- hosts: all
  roles:
    - ansible-role-encrypt-disk
  vars:
    disk_name: "sdb1"
