
Implement a procedure to encrypt the partition that is present on the disk next to the root partition.

## Role Variables

## Role Variables
- `partition_name`: The name of the partition to encrypt (e.g., `/dev/xvdb`).
- `luks_passphrase`: The passphrase used for LUKS encryption.

Valdation included.

### Example Playbook
---
- hosts: all
  become: yes
  roles:
    - role-encrypt-disk
