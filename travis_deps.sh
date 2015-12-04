#!/bin/bash --login
set -ex
git_root=$(git rev-parse --show-toplevel)

cd $git_root/meta
source source_ansible_bash
ansible-playbook -K playbooks/devall.yml


mkdir -p $git_root/build
cd $git_root/build
cmake $git_root