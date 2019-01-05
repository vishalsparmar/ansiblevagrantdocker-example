#!/bin/bash

returnValue=$(curl -silent  http://127.0.0.1:8080 | grep V)
echo "$returnValue"
expectedValue="!!!!!!!Hello World from VP There on Vagrant Ansible Docker NGINx"

if [ "$returnValue" == "$expectedValue" ];then
  echo “Output is Good“;
else
  echo “Output is NOT  equal“;
fi
