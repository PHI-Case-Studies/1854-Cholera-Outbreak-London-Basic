#!/bin/bash

# Activate environment
source /home/nbuser/anaconda3_420/bin/activate

# Set up proxy
#http_proxy=http://webproxy:3128
#https_proxy=http://webproxy:3128
#export http_proxy
#export https_proxy

# Install packages
conda update -c conda-forge conda conda-build
conda install -y -c conda-forge folium=0.9.1

pip install --upgrade pip
pip install pandas==0.24.2

source /home/nbuser/anaconda3_420/bin/deactivate