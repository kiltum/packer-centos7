#!/bin/bash
TOKEN=`cat vagrant.key`
packer build -var 'cloud_token=${TOKEN}' -var 'version=0.0.1' centos.json
