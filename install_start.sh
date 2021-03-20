sudo groupadd --system prometheus
sudo useradd -s /sbin/nologin --system -g prometheus prometheus
sudo mkdir /var/lib/prometheus
for i in rules rules.d files_sd; do sudo mkdir -p /etc/prometheus/${i}; done
sudo apt update
sudo apt -y install wget curl vim
mkdir -p /tmp/prometheus && cd /tmp/prometheus
curl -s https://github.com/prometheus/prometheus/releases/download/v2.22.0/prometheus-2.22.0.linux-armv7.tar.gz | grep browser_download_url | grep linux-amd64 | cut -d '"' -f 4 | wget -qi -
tar xvf prometheus*.tar.gz
cd prometheus*/
sudo mv prometheus promtool /usr/local/bin/
prometheus --version
promtool --version
sudo mv prometheus.yml /etc/prometheus/prometheus.yml
sudo mv consoles/ console_libraries/ /etc/prometheus/

