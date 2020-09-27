#! /bin/sh

proc_name="WorkerMan"                          #进程名称
log_name="/home/www/chat/GatewayWorker/workerman.log"                    #日志名称

proc_num=`ps -ef | grep $proc_name | grep -v grep | wc -l`                #进程数量


if [ $proc_num -eq 0 ]
then
 /usr/local/php/bin/php /home/www/chat/GatewayWorker/start.php restart -d
  echo `date +%Y-%m-%d` `date +%H:%M:%S`  $proc_name >>$log_name
fi
