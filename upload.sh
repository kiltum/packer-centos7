#!/bin/bash
TOKEN=`cat vagrant.key`
curl https://app.vagrantup.com/api/v1/box/kiltum/centos7/version/0.0.2/provider/virtualbox/upload?access_token=${TOKEN}
