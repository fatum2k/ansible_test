# Ansible Role: Switch CPU Mode to Performance

This Ansible role switches the CPU operation mode from power-saving to a more productive mode by setting the CPU governor to "performance".

## Example Playbook

- hosts: all
  become: yes
  roles:
    - switch_cpu_mode
