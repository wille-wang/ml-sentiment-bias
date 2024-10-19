#!/bin/bash

# Install git-lfs
sudo apt update
sudo apt install git-lfs
git lfs install

# Install Python dependencies
pip3 install --user -r requirements.txt
