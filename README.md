# CentOS7 files for CI/CD purpose

Test
----
```
./build.sh
vagrant up virtualbox --provider=virtualbox
...
vagrant destroy virtualbox -f
```

Requirements
------------

- VirtualBox
- Vagrant
- Vagrant virtual box plugin (vagrant plugin install vagrant-vbguest)
- Git Crypt (https://github.com/crohr/ebarnouflant/issues/3)

Usage
-----

After deploy by included Vagrant file, you will get

- centos 7 machine.
- Default user: ansible with ansible password and YOU ssh key
- ip 192.168.3.5
- selinux disabled


