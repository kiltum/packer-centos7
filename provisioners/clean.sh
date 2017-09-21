#!/bin/bash
sudo yum -y remove kernel-devel
sudo yum clean all
sudo rm -rf /var/cache/* /usr/share/doc/*
dd if=/dev/zero of=/tmp/empty bs=1M
rm -f /tmp/empty