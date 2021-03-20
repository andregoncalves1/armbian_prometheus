#!/bin/sh
useradd --no-create-home --shell /bin/false node_exporter
wget https://github.com/prometheus/node_exporter/releases/download/v0.17.0/node_exporter-0.17.0.linux-amd64.tar.gz
tar -xf node_exporter-0.17.0.linux-amd64.tar.gz
cp node_exporter-0.17.0.linux-amd64/node_exporter /usr/local/bin
chown node_exporter:node_exporter /usr/local/bin/node_exporter
rm -rf node_exporter-0.17.0.linux-amd64*
