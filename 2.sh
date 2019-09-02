#!/bin/bash
#检查root密码脚本占位符（x）是否被修改
msg=$(cat /etc/passwd)
state=$(echo $msg | awk '{print $1}' | awk 'BEGIN{FS=":"} {print $2}')
if [ "$state" == "x" ]
then 
 echo "密码正常"
else 
 echo "密码已被修改"
fi


