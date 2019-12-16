#!/usr/bin/env bash

docker run -v ~/.ssh/id_rsa:/root/.ssh/id_rsa \
  -v ~/.ssh/id_rsa.pub:/root/.ssh/id_rsa.pub \
  -v $(pwd):/ansible/playbooks \
  uogsoe/ansible-playbook docker_ubuntu.yml -i /ansible/playbooks/hosts

