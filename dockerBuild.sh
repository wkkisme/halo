#!/bin/bash

# 使用命令

mvn clean package -Dmaven.test.skip=true

# 创建目录
mkdir -p target/dependency && (cd target/dependency; jar -xf ../*.jar)



docker build -f docker/Dockerfile  -t blog/kiven .