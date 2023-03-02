#!/usr/bin/env bash

set -e
set -x

export USE_GKE_GCLOUD_AUTH_PLUGIN=True

#gcloud auth login

gcloud container clusters get-credentials jupyter-dev --zone us-central1

helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
helm repo update

helm upgrade --cleanup-on-fail \
	--install jupyter-dev jupyterhub/jupyterhub \
	--namespace jupyter-dev \
	--create-namespace \
	--version=2.0.0 \
	--values ./config/jupyterhub_config.yaml \
	--values ./config/jupyterhub_secrets.yaml \
	--values ./config/jupyterhub_config_dev.yaml

