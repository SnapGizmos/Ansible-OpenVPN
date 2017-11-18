SnapGizmos Ansible-OpenVPN
=========

Enables epel-release repo. Installs OpenVPN and Easy RSA via yum.

TODO - Firewall configuration. Enable / start OpenVPN as service. Store client keys in Ansible Vault. 
Tweak client key creation process.
Create playbook to manage keys.

Requirements
------------

CentOS 7 

- Playbooks will install necessary requirements

1st - See variables section below.

2nd - ansible-playbook site.yml

3rd - ansible-playbook client-key.yml --extra-vars "clientkey=JohnDoe" 
- Will create client keys ##.pem, JohnDoe.csr & JohnDoe.key & JohnDoe.crt in /etc/openvpn/easy-rsa/keys/

##.pem is identical to JohnDoe.crt or whatever value is specified for clientkey



Role Variables
--------------

roles/serverkey/tasks/main.yml creates keys necessary for server to run.
Currently they're stored in /etc/openvpn/easy-rsa/keys

- Edit roles/easyrsa2/files/easyrsa2.vars to suit your needs

- Edit roles/common/files/server.conf to adjust OpenVPN Server configuration

- See hosts-example for how to setup your /etc/ansible/hosts file.

- Add user centos
- Create ssh key for user centos - this allows Ansible to login without password
- Edit /etc/sudoers to allow user centos sudo access without password

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
