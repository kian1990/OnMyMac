#!/bin/bash

# 查找进程PID
pid=$(pgrep -f DeamonName)

# 判断PID是否为空
if [ -z "$pid" ]; then
	echo "未运行"
else
    kill -9 $pid > /dev/null 2>&1
    echo "已结束"
fi
