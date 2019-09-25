#制定node镜像的版本
FROM node:8.9-alpine
#声明作者
MAINTAINER wangyunlong
#移动到当前目录app
ADD . /app/
#进入工作目录
WORKDIR /app
# 安装依赖

COPY package.json /app/package.json

RUN npm i --registry=https://registry.npm.taobao.org

EXPOSE 7001

CMD ["npm", "start"]