# Armbian Prometheus

## Install

- Run install_start.sh
- Copy prometheus config to /etc/prometheus/ 

```sh
sudo cp <repo_clone>/prometheus.yml /etc/prometheus/
```

- Copy prometheus systemd to /etc/systemd/system/ 

```sh
sudo cp <repo_clone>/prometheus.service /etc/systemd/system/
```
- Run install_finish.sh
