# 下载Google Cloud Storage中的文件到指定目录
gsutil cp gs://serv_env/env/server_env.zip /data/tools/server_env.zip

# 解压文件
unzip -o /data/tools/server_env.zip -d /data/tools

# 进入解压后的目录（假设解压后目录名为server_env）
cd /data/tools/server_env

# 修改脚本权限并转换格式
chmod +x *.sh
dos2unix *.sh

# 执行安装脚本并加载环境变量
./install_jdk.sh 
source /etc/profile

java --version

./install_mongo.sh
