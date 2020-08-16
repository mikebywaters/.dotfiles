#!/bin/bash
set -u
set -e
sudo -v

# Ansible
declare pythonVersion=3.7.6
declare ansibleVersion=2.9

pyenv install "${pythonVersion}"
pyenv global "${pythonVersion}"

pip3 install -q --upgrade --user pip virtualenv virtualenvwrapper
pip3 install -q --user ansible==${ansibleVersion} paramiko wheel
