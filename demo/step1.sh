#!/bin/sh
echo ""
echo "========== 開始建置 Image =========="
docker build -t my-image-1 .

echo ""
echo "========== 開始建立 Container ======"
docker run -d --name my-container-1 my-image-1