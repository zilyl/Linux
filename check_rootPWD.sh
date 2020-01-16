#!/bin/bash
#检测/etc/passwd中是否有和root 的UID一样的用户或进程,或者是否存在UID和GID 都相同的进程

#定义root UID、GID
R_UID=0
R_GID=0

#检测/etc/passwd是否有和root的UID 一样的进程或用户
for i in $(cat /etc/passwd)
do  
#查看/etc/passwd 
 a=$(echo $i | awk 'BEGIN{FS=":"} $3==0 {print $1"UID="$3"GID="$4}')
 b=$(echo $i | awk 'BEGIN{FS=":"} $3==$4 {print $1"UID="$3"GID="$4}')
 test -z $a
 if [ $? -eq 1 ]
 then 
  echo "和root UID一样的有"$a
 else
  test -z $b
  if [ $? -eq 1 ]
  then
   echo "UID和GID 一样的有"$b
  fi
 fi
done
