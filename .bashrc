############################################################################
#																																					 #
# LIMIX_24OS .bashrc version 0.0.1                                         #
#                                                                          #
# 2013-10-20                                                               #
#                                                                          #
############################################################################
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

LIMIX_REPO=~/media/repo
LIMIX_OPT=~/media/opt
LIMIX_TMP=~/tmp
LIMIX_BIN=~/media/bin
LIMIX_WS=~/media/workspace

# 主目录定义
JAVA_HOME=$LIMIX_OPT/java/current
M2_HOME=$LIMIX_OPT/apache-maven-3.2.3
HADOOP_HOME=$LIMIX_OPT/hadoop-2.6.0
HBASE_HOME=$LIMIX_OPT/hbase-1.2.0
PB_HOME=$LIMIX_OPT/protobuf
PIG_HOME=$LIMIX_OPT/pig-0.15.0
ROCKETMQ_HOME=$LIMIX_OPT/alibaba-rocketmq
# 其他定义
PYTHONSTARTUP=.limix.py
BROWSER=/usr/bin/firefox
OOZIE_URL=http://localhost:11000/oozie
HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar
HISTTIMEFORMAT='%F %T  '
SBT_HOME=$LIMIX_OPT/sbt

# 重定义
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/user/sunflower/dcfile/lib-native
PATH=$PATH:$LIMIX_BIN:$JAVA_HOME/bin:$HADOOP_HOME/bin:$HBASE_HOME/bin:$M2_HOME/bin:$PB_HOME/bin:$SBT_HOME/bin

# 导出
export LD_LIBRARY_PATH
export LIMIX_BIN LIMIX_OPT LIMIX_REPO LIMIX_TMP 
export JAVA_HOME HADOOP_HOME HBASE_HOME PB_HOME PIG_HOME ROCKETMQ_HOME M2_HOME
export BROWSER OOZIE_URL HADOOP_CLASSPATH
export HISTTIMEFORMAT
export PATH

# 别名
alias ..='cd ..'
alias bin='cd $LIMIX_BIN'
alias repo='cd $LIMIX_REPO'
alias opt='cd $LIMIX_OPT'
alias tmp='cd $LIMIX_TMP'
alias ws='cd $LIMIX_WS'
alias mv2repo='mv -t $LIMIX_REPO/'
alias mv2opt='mv -t $LIMIX_OPT/'
alias openwifi="sudo wpa_supplicant -Dwext -iwlan0 -c etc/network/wpa_supplicant.conf -B;echo 'Begin to obtain Ip from the route wait for a moment'; sudo dhclient wlan0; echo Okey"
alias openwifi4work="sudo wpa_supplicant -Dwext -iwlan0 -c etc/network/iflytek.conf -B;echo 'Begin to obtain Ip from the route wait for a moment'; sudo dhclient wlan0; echo Okey"
alias closewifi="sudo ps -ef | grep wpa_supplicant | grep -v grep | awk '{print $2}' | xargs sudo kill -9;sudo ps -ef | grep dhclient | grep -v grep | awk '{print $2}' | xargs sudo kill -9"
alias clear='printf "\ec"'
SPLIT_HOME=`pwd`
alias h='cd $SPLIT_HOME'
