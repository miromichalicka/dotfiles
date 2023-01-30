#!/bin/bash

# Make sure ansible is installed.
if ! which ansible > /dev/null; then
  sudo add-apt-repository universe -y
  sudo apt install ansible -y
  ansible-galaxy collection install community.general
  ansible-galaxy install gantsign.oh-my-zsh
fi

# Run our playbook now.
ansible-playbook ansible-setup.yml -i hosts -K -v
