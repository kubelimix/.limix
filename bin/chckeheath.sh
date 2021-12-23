#!/bin/bash
source /etc/profile
pid=`jps|grep Bootstrap |grep -v grep|awk '{print $1}'`
#如果不存在返回1，存在返回0
starttime=$(date +%Y-%m-%d\ %H:%M:%S)
if [ -z "${pid}" ]; then
     echo "$starttime 实时接入程序死了,开始重新启动......"
     sh /apache-tomcat-8.5.47/bin/startup.sh
   else
     echo "实时接入程序还活着呢  检测时间:$starttime"
fi
