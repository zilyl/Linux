#/bin/bash
#检测账户是否存在未设密码


for i in $(cat /etc/shadow)
do 
 user=$(echo $i | awk 'BEGIN{FS=":"} {print $1}')
 state=$(echo $i | awk 'BEGIN{FS=":"} $2=="!!" {print $2}  ')
 if [ "$state" == "!!" ]
 then
  echo $user"未设密码"
 fi 

done
