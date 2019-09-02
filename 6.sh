#!/bin/bash
#检测密码是否永久有效

for i in $(cat /etc/shadow)
do 
 user=$(echo $i | awk 'BEGIN{FS=":"} {print $1}')
 pwd_validtime=$(echo $i | awk 'BEGIN{FS=":"} {print $7}')
 if [ "$pwd_validtime" == "" ]
 then
  echo $user"的密码存在风险"
 elif [ ]
 then 
  echo $user"的密码失效时间还有"$pwd_validtime"天"
 fi
done
