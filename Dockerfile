# 第三版

# 基底 Image
FROM node:alpine

WORKDIR app

RUN npm init -y \
    && npm install express

ADD app/index.js .

# 開放對外的 Port
EXPOSE 3000

# 容器啟動後執行的命令
CMD ["node", "index.js"]