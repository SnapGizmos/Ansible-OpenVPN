SnapGizmos Ansible-OpenVPN
=========

Enables epel-release repo. Installs OpenVPN and Easy RSA via yum.

TODO - Firewall configuration. Make server and client keys. Enable / start OpenVPN as service.

Requirements
------------

CentOS 7 - Playbooks will install necessary requirements

Role Variables
--------------

Edit roles/easyrsa2/files/easyrsa2.vars to suit your needs
See files/build-server-keys.sh for example to build keys/certs for server and clients

Edit roles/common/files/server.conf to adjust OpenVPN Server configuration

See hosts-example for how to setup your /etc/ansible/hosts file.
-Add user centos
-Edit /etc/sudoers to allow user centos to sudo access without password

Dependencies
------------

Ansible 2.4

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

GPLv3

Author Information
------------------

Snap Gizmos LLC
