#!/bin/bash
if [[ $(conda list | grep folium | awk '{print $1}') == "folium" ]]; then
    echo "Package folium is installed."
else 
    echo "Package folium is not installed"
    conda install -c conda-forge -y folium
fi
if [[ $(conda list | grep osmnx | awk '{print $1}') == "osmnx" ]]; then
    echo "Package osmnx is installed."
else 
    echo "Package osmnx is not installed"
    conda install -c conda-forge -y osmnx    
fi
if [[ $(conda list | grep networkx | awk '{print $1}') == "networkx" ]]; then
    echo "Package networkx is installed."
else 
    echo "Package networkx is not installed"
    conda install -c conda-forge -y networkx    
fi