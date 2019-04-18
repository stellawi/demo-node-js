#!/usr/bin/env bash
name=${CHART_NAME:-undefined}
path=${CHART_PATH:-undefined}
version=${VERSION:-""}
values_file=${VALUES_FILE_PATH:-undefined}
namespace=${NAMESPACE:-undefined}
options=${OPTIONS:-""}

pushd /tmp
curl -O https://kubernetes-helm.storage.googleapis.com/helm-v2.11.0-linux-amd64.tar.gz
tar xf helm-v2.11.0-linux-amd64.tar.gz
export PATH=$(pwd)/linux-amd64:$PATH
popd

helm init --client-only

helm upgrade --install ${name} --values=${values_file} \
  --version=${version} --namespace=${namespace} ${path} \
  --set=$options


