systemctl daemon-reload
systemctl start node_exporter
systemctl enable node_exporter
systemctl restart prometheus
systemctl status prometheus
