
Implement a procedure to encrypt the partition that is present on the disk next to the root partition.

## Role Variables

- `disk_name`: Name of the disk to be encrypted (e.g., `xvdb`).

variable stores in roles/role-encrypt-disk/defaults/main.yml

Valdation included.

### Example Playbook
---
- hosts: all
  become: yes
  roles:
    - ansible-role-encrypt-disk
