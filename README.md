# Armbian Prometheus

## Install Prometheus

- Run install_prometheus_start.sh

```sh
sh install_prometheus_start.sh
```

- Copy prometheus config to /etc/prometheus/ 

```sh
sudo cp <repo_clone>/prometheus.yml /etc/prometheus/
```

- Copy prometheus systemd to /etc/systemd/system/ 

```sh
sudo cp <repo_clone>/prometheus.service /etc/systemd/system/
```

- Run install_prometheus_finish.sh

```sh
sh install_prometheus_finish.sh
```

## Install Node Exporter

- Run install_node_exporter_start.sh

```sh
sh install_node_exporter_start.sh
```

- Copy node exporter systemd to /etc/systemd/system/ 

```sh
sudo cp <repo_clone>/node_exporter.service /etc/systemd/system/
```

- Add node exporter config to prometheus.

Edit the file /etc/prometheus/prometheus.yml and add the section below in scrape_configs

```
- job_name: 'node_exporter'
    scrape_interval: 5s
    static_configs:
      - targets: ['localhost:9100']
```

- Run install_node_exporter_finish.sh

```sh
sh install_node_exporter_finish.sh
```
