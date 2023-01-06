#!/usr/bin/env bash

set -e
set -x

helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
helm repo update

helm upgrade --cleanup-on-fail \
	--install jupyter jupyterhub/jupyterhub \
	--namespace jupyter \
	--create-namespace \
	--version=2.0.0 \
	--values ./config/jupyterhub_config.yaml \
	--values ./config/jupyterhub_secrets.yaml \
	--values ./config/jupyterhub_config_local_dev.yaml

