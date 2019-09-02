#!/bin/bash
#检测哪个账户存在空密码

for i in $(cat /etc/shadow)
do 
 user=$(echo $i | awk 'BEGIN{FS=":"} {print $1}')
 state=$(echo $i | awk 'BEGIN{FS=":"} {print $2}')
 if [ "$state" == "" ];
 then 
  echo $user"密码为空"
 elif [ "$state" == "*" ];
 then 
  echo $user"已被锁定"
 fi 
done
