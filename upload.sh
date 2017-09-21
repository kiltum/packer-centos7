#!/bin/bash
TOKEN=`cat vagrant.key`
VER=`cat version`
echo "Grab upload path"
JSON=`curl -s https://app.vagrantup.com/api/v1/box/kiltum/centos7/version/${VER}/provider/virtualbox/upload?access_token=${TOKEN}`
echo $JSON|grep -q "Resource not found"
if [ $? -eq 0 ]
then
echo "ERROR! Go to web and create version/provider"
exit
fi
PTH=`echo $JSON|python -c "import sys, json; print json.load(sys.stdin)['upload_path']"`
echo "Uploading ${VER}"
#echo $PTH
curl --progress-bar -X PUT --upload-file builds/virtualbox-centos7.box ${PTH}
