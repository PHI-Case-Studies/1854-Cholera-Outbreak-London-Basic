#!/bin/bash

# Activate environment
source /home/nbuser/anaconda3_420/bin/activate

# Install packages
conda update -c conda-forge conda conda-build
conda install -y -c conda-forge ofolium=0.9.1

pip install --upgrade pip
pip install pandas==0.24.2

source /home/nbuser/anaconda3_420/bin/deactivate
