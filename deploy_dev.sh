#!/usr/bin/env bash

set -e
set -x

helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
helm repo update

helm upgrade --cleanup-on-fail \
	--install jupyter-dev jupyterhub/jupyterhub \
	--namespace chameleon-jupyter \
	--version=4.0.0 \
	--values ./config/jupyterhub_config.yaml \
	--values ./config/jupyterhub_secrets.yaml \
	--values ./config/jupyterhub_config_dev.yaml
