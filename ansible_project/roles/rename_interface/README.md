This role renames the active network interface `enX0` to `net0` and displays CPU details.

To verify that interface is renamed execute:
ip addr show net0

## Usage
---
- hosts: all
  become: yes
  roles:
    - rename_interface
