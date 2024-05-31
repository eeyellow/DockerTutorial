# 第二版

# 基底 Image
FROM ubuntu

ENV DEBIAN_FRONTEND=noninteractive

# 安裝套件
RUN apt-get update -y \
    && apt-get install nodejs npm -y

WORKDIR app

RUN npm init -y \
		&& npm install express

# 把編輯好的index.js放在跟Dockerfile同資料夾下
ADD app/index.js .

# 開放對外的 Port
EXPOSE 3000

# 容器啟動後執行的命令
CMD ["node", "index.js"]