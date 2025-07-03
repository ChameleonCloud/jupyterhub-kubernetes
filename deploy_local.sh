#!/usr/bin/env bash

set -e
set -x

helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
helm repo update

helm upgrade --cleanup-on-fail \
	--install jupyter jupyterhub/jupyterhub \
	--namespace jupyter \
	--create-namespace \
	--version=4.0.0 \
	--values ./config/jupyterhub_config.yaml \
	--values ./config/jupyterhub_secrets.yaml \
	--values ./config/jupyterhub_config_local_dev.yaml

# sleep 10
# kubectl -n jupyter exec -it $(kubectl get pods -n jupyter | grep hub | cut -d ' ' -f 1) -- bash -c 'pip install /jupyterhub_chameleon'
