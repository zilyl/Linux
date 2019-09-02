# shell-
记录shell学习中写的小脚本，方便自己，方便他人

\1.      root 用户的UID=0，GID=0，检测/etc/passwd 是否有和root 的UID一样，或者是否同时存在两个用户的UID，GID一样

编写脚本

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image002.jpg)

执行结果

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image004.jpg)

 

\2.      检测root密码脚本占位符（X） 是否被改动，不是X说明被修改

编写脚本

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image005.png)

 

运行结果

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image007.jpg)

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image009.jpg)

 

3.检测账户是否存在未设密码（！！ 表示未设密码）

脚本编写

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image011.jpg)

运行结果

 

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image013.jpg)  ![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image015.jpg)

 

 

4． 检测到提示哪个账户密码为空或哪些账号被锁定 （”” ：密码为空，“*” 被锁定）

脚本编写

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image017.jpg)

执行结果

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image019.jpg)

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image021.jpg)

 

5． rc.local 操作系统自动执行

在rc.local中添加一下运行hack.sh脚本的语句

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image023.jpg)

hack.sh 脚本内容如下：在root目录下创建一个hack1文件夹，然后再/root目录下写入一个文件，内容为“you are hacked”

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image025.jpg)

重启测试

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image027.jpg)

 

6． 检测失效时间，如果为空，则说明密码存在风险

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image028.png)

 

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image030.jpg)

 

7．检测密码是否永久有效，如果是99999，说明存在风险

脚本编写

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image032.jpg)

运行效果

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image034.jpg)

![img](file:///C:\Users\ZY\AppData\Local\Temp\msohtmlclip1\01\clip_image036.jpg)

 