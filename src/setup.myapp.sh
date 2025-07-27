#/usr/bin/env bash
######################################################
#Developed by: Baruch Gudesblat
#Purpose: Simple Helm/Kubernetes task deploying the Python+Flask based application.
#Date: 27/07/2025
#Version: 0.1.0
######################################################

set -o errexit
set -o pipefail

function main(){
   setup_charm
   create_deploy
   test_deploy
}


function setup_charm(){
   if [ -d myapp ]; then rm -rf myapp; fi
   helm create myapp
   cat << EOI > myapp/my_values.yaml
image:
  repository: baruchgu/app_py
  tag: 0.0.2
service:
  port: 8020
EOI
}

function create_deploy(){
    helm install myapp myapp -f myapp/my_values.yaml
}

function  test_deploy(){
    export POD_NAME=$(kubectl get pods  -l "app.kubernetes.io/name=myapp,app.kubernetes.io/instance=myapp" -o jsonpath="{.items[0].metadata.name}")
    export CONTAINER_PORT=$(kubectl get pod $POD_NAME -o jsonpath="{.spec.containers[0].ports[0].containerPort}")
    sleep 10
    kubectl --namespace dev port-forward $POD_NAME 8080:$CONTAINER_PORT &
    sleep 5
    cat << EOI > myapp/expect.json
{
  "message": "Hello Deda",
  "success": true
}
EOI

    curl http://127.0.0.1:8080/Deda > myapp/test.json
    if cmp myapp/{expect,test}.json; then
        echo "The application output is not correct"
        exit 1
    fi
}

#-----------------------------------------------

main "$@"

