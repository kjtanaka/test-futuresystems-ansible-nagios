#!/bin/bash
#
# shell/install-roles.sh
#
# NOTE: Don't execute this directory. Use make instead.

CWD=$(pwd)

echo Installing ansible-role-nagios-config...
if [ -d $CWD/roles/ansible-role-nagios-config ]; then
  cd $CWD/roles/ansible-role-nagios-config
  git pull
else
  cd $CWD/roles
  git clone https://github.com/futuresystems/ansible-role-nagios-config.git
fi

echo Installing ansible-role-nagios-client...
if [ -d $CWD/roles/ansible-role-nagios-client ]; then
  cd $CWD/roles/ansible-role-nagios-client
  git pull
else
  cd $CWD/roles
  git clone https://github.com/futuresystems/ansible-role-nagios-client.git
fi

echo Installing ansible-role-nagios-server...
if [ -d $CWD/roles/ansible-role-nagios-server ]; then
  cd $CWD/roles/ansible-role-nagios-server
  git pull
else
  cd $CWD/roles
  git clone https://github.com/futuresystems/ansible-role-nagios-server.git
fi
