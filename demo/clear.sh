#!/bin/sh

clear
# 停止所有Container
running_containers=$(docker ps -q)
if [ -n "$running_containers" ]; then
    echo "========== 停止所有Container =========="
    docker stop $running_containers
    echo ""
fi

# 刪除所有Container
all_containers=$(docker ps -aq)
if [ -n "$all_containers" ]; then
    echo "========== 刪除所有Container =========="
    docker rm $all_containers
    echo ""
fi

# 刪除所有image
all_images=$(docker images -q)
if [ -n "$all_images" ]; then
    echo "========== 刪除所有image =========="
    docker rmi $all_images
    echo ""
fi

# 刪除所有的volume
all_volumes=$(docker volume ls -q)
if [ -n "$all_volumes" ]; then
    echo "========== 刪除所有的volume =========="
    docker volume rm $all_volumes
    echo ""
fi
