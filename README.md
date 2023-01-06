# jupyterhub-kubernetes

This repo contains the jupyter configuration for Chameleon's jupyter
environment.

## Installation

1. Clone this repo
2. Install `kubectl` and https://helm.sh/
3. Set up kubectl with your kubernetes cluster
	1. For local dev, enable docker desktop's kubernetes cluster
	2. Build or pull Chameleon's notebook and hub images
4. Create `config/jupyterhub_secrets.yaml` from `config/jupyterhub_secrets_template.yaml`
5. Run a deploy script. See `deploy_prod.sh` and `deploy_local.sh`.
