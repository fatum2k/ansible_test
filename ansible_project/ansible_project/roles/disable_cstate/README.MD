# Ansible Role: Disable CPU C-State

This Ansible role disables C-state for all available CPUs on Ubuntu Linux. It checks if C-state is enabled on any CPU and, if so, disables it. The change is made persistent across reboots.

## Example Playbook

- hosts: all
  become: yes
  roles:
    - disable_cstate
