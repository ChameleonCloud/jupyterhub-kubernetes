#!/usr/bin/env bash

helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
helm repo update

helm upgrade --cleanup-on-fail \
	--install jupyter jupyterhub/jupyterhub \
	--namespace jupyter \
	--create-namespace \
	--version=2.0.0 \
	--values ./config/jupyterhub_config.yaml \
	--values ./config/jupyterhub_config_local_dev.yaml \
	--values ./config/jupyterhub_secrets.yaml

printf "Waiting for hub to come up\n"

sleep 10

open http://localhost

printf "Following hub logs, ^-c at any time\n"

./logs.sh
