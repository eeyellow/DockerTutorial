#!/bin/sh
echo ""
echo "========== 開始建置 Image =========="
docker build -t my-image-3 .

echo ""
echo "========== 開始建立 Container ======"
docker run -d -p 3000:3000 --name my-container-3 my-image-3