#!/bin/sh
set -e

# 创建目录
mkdir -p /data/tools
mkdir -p /data/workspace

# 安装依赖包
yum install -y curl zip unzip dos2unix

# 配置Google Cloud SDK的yum仓库
cat <<EOF > /etc/yum.repos.d/google-cloud-sdk.repo
[google-cloud-sdk]
name=Google Cloud SDK
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el7-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://packages.cloud.google.com/yum/doc/yum-key.gpg https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOF

# 安装Google Cloud SDK（包含gcloud和gsutil）
yum install -y google-cloud-sdk

# 初始化gcloud（登录认证）
gcloud init
