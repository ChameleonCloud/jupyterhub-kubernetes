# jupyterhub-kubernetes

This repo contains the jupyter configuration for Chameleon's jupyter
environment.

## Installation

1. Clone this repo
2. Install https://helm.sh/
3. Enable docker desktop's kubernetes cluster
4. Build or pull Chameleon's notebook and hub images
5. Run `./deploy.sh`

## Development

After building a new hub or notebook image, simply run `./deploy.sh` again to
update the deployment.
