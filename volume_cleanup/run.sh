#!/bin/bash

kubectl -n jupyter delete job volume-cleanup
kubectl apply -k .

