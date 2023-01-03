#!/usr/bin/env bash

kubectl -n jupyter logs -l component=hub --since=1h -f
