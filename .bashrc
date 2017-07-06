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

#主目录定义
LIMIX_REPO=~/media/repo
LIMIX_OPT=~/media/opt
LIMIX_TMP=~/tmp
LIMIX_BIN=~/.bin
LIMIX_WS=~/media/workspace
LIMIX_CORE=~/media/core
LIMIX_GIT=~/media/git
LIMIX_GITHUB=$LIMIX_GIT/github

# 主目录定义
RAR_HOME=$LIMIX_OPT/rar/current
JAVA_HOME=$LIMIX_OPT/java/current
GRADLE_HOME=$LIMIX_OPT/gradle/current
M2_HOME=$LIMIX_OPT/maven/current
ANT_HOME=$LIMIX_OPT/ant/current
MYSQL_HOME=/usr/local/mysql
ES_HOME=$LIMIX_OPT/elasticsearch/current
HADOOP_HOME=$LIMIX_OPT/hadoop/current
HBASE_HOME=$LIMIX_OPT/hbase/current
HIVE_HOME=$LIMIX_OPT/hive/current
HCAT_HOME=$HIVE_HOME/hcatalog
SQOOP_HOME=$LIMIX_OPT/sqoop/current
SPARK_HOME=$LIMIX_OPT/spark/current
KAFKA_HOME=$LIMIX_OPT/kafka/current
OOZIE_HOME=$LIMIX_OPT/oozie/current
KYLIN_HOME=$LIMIX_OPT/kylin/current
PB_HOME=$LIMIX_OPT/protobuf/current
PIG_HOME=$LIMIX_OPT/pig/current
ROCKETMQ_HOME=$LIMIX_OPT/rocketmq/current
SBT_HOME=$LIMIX_OPT/sbt
HUE_HOME=$LIMIX_OPT/hue/current

PATH=$PATH:$LIMIX_BIN:$RAR_HOME/bin:$JAVA_HOME/bin:$GRADLE_HOME/bin:$M2_HOME/bin:$ANT_HOME/bin:$SBT_HOME/bin:$KYLIN_HOME/bin
PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin:$HBASE_HOME/bin:$SQOOP_HOME/bin:$HIVE_HOME/bin:$HCAT_HOME/bin:$PB_HOME/bin:$MYSQL_HOME/bin


HIVE_CONF_DIR=$HIVE_HOME/conf
HIVE_CONF=$HIVE_HOME/conf
SQOOP_SERVER_EXTRA_LIB=/var/lib/sqoop2/

# 其他定义
PYTHONSTARTUP=.limix.py
BROWSER=/usr/bin/firefox
OOZIE_URL=http://localhost:11000/oozie
HADOOP_CLASSPATH=$JAVA_HOME/lib/tools.jar
HISTTIMEFORMAT='%F %T  '
SVN_EDITOR=vim
export MAVEN_OPTS='-Xms256m -Xmx1024m -XX:MaxPermSize=512m'
CLASSPATH=$CLASSPATH:$KYLIN_HOME/lib/kylin-jdbc-2.0.0.jar
export CLASSPATH

export C_INCLUDE_PATH=$JAVA_HOME/include:$JAVA_HOME/include/darwin
export CPLUS_INCLUDE_PATH=$JAVA_HOME/include:$JAVA_HOME/include/darwin:.:/Users/limix/Documents/svn/ZY_ISPP/Trunk/Development/Source/JniForEngine/cata/include
LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH:/user/sunflower/dcfile/lib-native:/usr/local/lib
DYLD_LIBRARY_PATH=/usr/local/java

# 导出
export LD_LIBRARY_PATH
export LIMIX_BIN LIMIX_OPT LIMIX_REPO LIMIX_TMP LIMIX_CORE
export RAR_HOME JAVA_HOME GRADLE_HOME M2_HOME 
export HADOOP_HOME HIVE_HOME HBASE_HOME PB_HOME PIG_HOME ROCKETMQ_HOME ES_HOME SPARK_HOME KAFKA_HOME OOZIE_HOME KYLIN_HOME SQOOP_HOME
export HADOOP_CLASSPATH BROWSER OOZIE_URL 
export HISTTIMEFORMAT
export PATH
export SVN_EDITOR
export HIVE_CONF_DIR
export HIVE_CONF
export HCAT_HOME
export HUE_HOME
export SQOOP_SERVER_EXTRA_LIB

# 别名
alias ..='cd ..'
alias bin='cd $LIMIX_BIN'
alias repo='cd $LIMIX_REPO'
alias opt='cd $LIMIX_OPT'
alias tmp='cd $LIMIX_TMP'
alias ws='cd $LIMIX_WS'
alias c='cd $LIMIX_CORE'
alias mv2repo='mv -t $LIMIX_REPO/'
alias mv2opt='mv -t $LIMIX_OPT/'
alias openwifi="sudo wpa_supplicant -Dwext -iwlan0 -c etc/network/wpa_supplicant.conf -B;echo 'Begin to obtain Ip from the route wait for a moment'; sudo dhclient wlan0; echo Okey"
alias openwifi4work="sudo wpa_supplicant -Dwext -iwlan0 -c etc/network/iflytek.conf -B;echo 'Begin to obtain Ip from the route wait for a moment'; sudo dhclient wlan0; echo Okey"
alias closewifi="sudo ps -ef | grep wpa_supplicant | grep -v grep | awk '{print $2}' | xargs sudo kill -9;sudo ps -ef | grep dhclient | grep -v grep | awk '{print $2}' | xargs sudo kill -9"
alias clear='printf "\ec";printf "\033c"'
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias ssh18="ssh root@192.168.84.18"
alias ssh17="ssh root@192.168.84.17"
alias ssh16="ssh root@192.168.84.16"
alias ssh151="ssh root@192.168.84.151"
alias ssh196="ssh root@192.168.84.196"
alias job2="cd ~/Documents/job2"
alias job5="cd ~/Documents/job5"
alias github="cd $LIMIX_GITHUB"
SPLIT_HOME=`pwd`
alias h='cd $SPLIT_HOME'
alias jpshdfs='jps -ml | grep hdfs'
alias jpshbase='jps -ml | grep hbase'
alias jpshive='jps -ml | grep hive'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# app.hue
export LDFLAGS=-L/usr/local/opt/openssl/lib && export CPPFLAGS=-I/usr/local/opt/openssl/include

# locale
export LC_CTYPE="zh_CN.UTF-8"
