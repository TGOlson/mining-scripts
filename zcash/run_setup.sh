#!/bin/bash

location="$1"

scp -r scripts $location:~/
ssh $location -t "./scripts/setup.sh"

echo "Setup for $location complete"
