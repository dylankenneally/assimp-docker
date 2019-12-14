FROM centos:8

LABEL maintainer="Dylan Kenneally"
LABEL version="1.0"
LABEL description="AssImp Docker Containers"

RUN yum -y update

COPY ./target/tools/assimp_cmd/assimp /usr/bin/
COPY ./target/code/libassimp.so* /usr/lib/
ENV LD_LIBRARY_PATH="/usr/lib:${LD_LIBRARY_PATH}"

RUN assimp version
