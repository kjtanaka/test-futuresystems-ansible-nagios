test-futuresystems-ansible-nagios
=================================

This is an Ansible repository for building a test environment for these three roles.

* <https://github.com/futuresystems/ansible-role-nagios-server>
* <https://github.com/futuresystems/ansible-role-nagios-client>
* <https://github.com/futuresystems/ansible-role-nagios-config>

Requirements
------------
* Vagrant
* VirtualBox
* Ansible

How to
------

**Step 1.** Install roles with;

```bash
make install-roles
```

**Step 2.** Create VMs with;

```bash
vagrant up
```

**Step 3.** Deploy Nagios with;

```bash
ansible-playbook -i node site.yml
```

**Step 4.** Check Nagios WebUI at <http://127.0.0.1:8000/nagios>.

* user: `nagiosadmin`
* password `EasyPassword0123`

Questions/Updates
---------------------------

Please feel free to submit an issue or pull request.
