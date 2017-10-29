SnapGizmos Ansible-OpenVPN
=========

Enables epel-release repo. Installs OpenVPN and Easy RSA via yum.

Requirements
------------

CentOS 7 and an active internet connection. :) SSH recommended but not necessary for physical access.

Role Variables
--------------

Edit roles/easyrsa2/files/easyrsa2.vars to suit your needs
See files/build-server-keys.sh for example to build keys/certs for server and clients


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
