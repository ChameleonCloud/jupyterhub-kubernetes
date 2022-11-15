#!/usr/bin/env bash

kubectl -n jupyter logs -l component=singleuser-server --since=1h -f
