# Rename Interface Role

## Description
This role renames the active network interface `enX0` to `net0` on Ubuntu Linux running on AWS. It ensures that access to the target system is not lost during execution, and it displays the renamed interface information along with CPU details.

## Usage

---
- hosts: all
  become: yes
  roles:
    - rename_interface
