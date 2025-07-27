#/usr/bin/env bash

helm uninstall myapp
ip_line=$(ps -aex |grep -vw grep |grep $POD_NAME |grep -w kubectl)
kill ${ip_line[0]}
rm -rf myapp
