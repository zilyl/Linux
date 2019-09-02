#!/bin/bash
#检测密码是否永久有效，如果是99999，说明存在风险

pwd=99999
for i in $(cat /etc/shadow)
do 
 user=$(echo $i | awk 'BEGIN{FS=":"} {print $1}')
 flag=$(echo $i | awk 'BEGIN{FS=":"} $5=="99999" {print $5}')
 if [ "$pwd" == "$flag" ]
 then
  echo $user"的密码存在风险，请及时修改 "
 fi

done

