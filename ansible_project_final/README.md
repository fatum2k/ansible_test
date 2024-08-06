this Ansible project contains several roles. 
The disable_cstate role is for Disabling C-state for all available CPUs.
The ping role is for checking the connection to the target host.
The rename_interface role is intended to Rename the active network interface to "net0".
  Display information about the renamed interface during the playbook. At the end of the playbook execution, a list of CPUs should be displayed, as well as information about Intel Hyper-Threading (AMD multithreading).
The role role-encrypt-disk is intended to Implement a procedure to encrypt the partition that is present on the disk next to the root partition.
The role role-encrypt-disk-inventory actually does the same thing as the previous one, but the disk name is taken from the inventory file.
The switch_cpu_mode role is needed to enable operation from power-saving mode to more productive mode.

Example usage:
modify playbook.yml and choose required roles:

- name: prepare_host
  hosts: all
  gather_facts: yes
  become: yes
  roles:
    - ping
    - rename_interface
    - disable_cstate
    - role-encrypt-disk
    - role-encrypt-disk-inventory
    - switch_cpu_mode

Then execute:
ansible-playbook -i inventory/inventory.yml playbook.yml
