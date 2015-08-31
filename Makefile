# Makefile for test-futuresystems-ansible-nagios

help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  install-roles       to install/udate roles "

install-roles:
	bash shell/install-roles.sh
