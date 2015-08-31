# Makefile for test-futuresystems-ansible-nagios

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  roles       to install/udate roles "

roles:
	bash shell/roles.sh
