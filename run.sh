#!/usr/bin/env bash

# assuming you've done something like :
#   docker build -t uogsoe/ansible-playbook .

docker run -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
  -v ~/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub \
  -v $(pwd):/ansible/playbooks \
  uogsoe/ansible-playbook install_docker.yml -i /ansible/playbooks/hosts

