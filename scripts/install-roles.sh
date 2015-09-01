#!/bin/bash
#
# shell/install-roles.sh
#
# NOTE: Don't execute this script directly. Use `make install-roles` instead.

CWD=$(pwd)

echo Installing ansible-role-nagios-config...
if [ -d $CWD/roles/nagios-config ]; then
  cd $CWD/roles/nagios-config
  git pull
else
  cd $CWD/roles
  git clone https://github.com/futuresystems/ansible-role-nagios-config.git nagios-config
fi

echo Installing ansible-role-nagios-client...
if [ -d $CWD/roles/nagios-client ]; then
  cd $CWD/roles/nagios-client
  git pull
else
  cd $CWD/roles
  git clone https://github.com/futuresystems/ansible-role-nagios-client.git nagios-client
fi

echo Installing ansible-role-nagios-server...
if [ -d $CWD/roles/nagios-server ]; then
  cd $CWD/roles/nagios-server
  git pull
else
  cd $CWD/roles
  git clone https://github.com/futuresystems/ansible-role-nagios-server.git nagios-server
fi
