# 使用CentOS 7 作为基础镜像
FROM daocloud.io/centos:latest
MAINTAINER Huajun Gu <contact@guhuajun.com>

# 使用Aliyun镜像站点
RUN yum install wget -y
RUN mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo

# 后续安装包

EXPOSE 80
CMD ["bash"]