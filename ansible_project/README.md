# Ansible Project Overview

This Ansible project includes several roles designed for various system administration tasks. Below is a brief overview of each role and its intended purpose.

## Roles

### 1. `disable_cstate`
- **Purpose**: Disables the C-state for all available CPUs to enhance performance and stability in certain environments.

### 2. `ping`
- **Purpose**: Verifies connectivity to the target hosts by executing a simple ping test.

### 3. `rename_interface`
- **Purpose**: Renames the active network interface to `net0`. Additionally, this role:
  - Displays information about the renamed interface during playbook execution.
  - Outputs a list of CPUs and details about Intel Hyper-Threading (or AMD multithreading) at the end of the playbook.

### 4. `role-encrypt-disk`
- **Purpose**: Implements a procedure to encrypt a partition that is adjacent to the root partition on the disk.

### 5. `role-encrypt-disk-inventory`
- **Purpose**: Similar to `role-encrypt-disk`, but the disk name is sourced from the inventory file.

### 6. `switch_cpu_mode`
- **Purpose**: Switches CPU operation from power-saving mode to a more productive mode, optimizing performance.

## Example Usage

To use these roles, modify `playbook.yml` and select the desired roles. Below is an example configuration:

```yaml
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
