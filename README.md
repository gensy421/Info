# 自用

https://github.com/uyez/v2ray/releases/tag/3x-ui

Centos  
yum install wget
# 1. 进入SELinux维护模式
sudo setenforce 0

# 2. 清理并重建策略数据库
sudo semanage -o /tmp/semanage.mod
sudo semodule -DB
sudo restorecon -Rv /usr/lib/systemd/system/cockpit-*.service
sudo restorecon -Rv /usr/libexec/cockpit-ws

# 3. 重新启用SELinux
sudo setenforce 1

bash <(curl -Ls https://raw.githubusercontent.com/gensy421/Info/refs/heads/main/init_env.sh)

bash <(curl -Ls https://raw.githubusercontent.com/gensy421/Info/refs/heads/main/init_jdk_mongo.sh)
