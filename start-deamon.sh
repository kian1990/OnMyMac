#!/bin/bash

# 查找进程PID
pid=$(pgrep -f DeamonName)

# 判断PID是否为空
if [ -z "$pid" ]; then
    cd /opt/app
    nohup /opt/app/DeamonName > /opt/app/DeamonName.log 2>&1 &
    echo "已启动"
else
    echo "运行中"
fi
