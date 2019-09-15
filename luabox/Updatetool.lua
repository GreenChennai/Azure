function 提示(内容)
  Toast.makeText(this, 内容,Toast.LENGTH_SHORT).show()
end
function 检测更新(Github地址)
local tt=Ticker()
tt.start()
packinfo=this.getPackageManager().getPackageInfo(this.getPackageName(),((1552294270/8/2-8392)/32/1250-25.25)/8-236)
version=tostring(packinfo.versionName)
versioncode=tostring(packinfo.versionCode)

url=Github地址;
function 过滤(content)
版本名=content:match("【版本名】(.-)【版本名】")
版本=content:match("【版本】(.-)【版本】")
内容=content:match("【内容】(.-)【内容】")
链接=content:match("【链接】(.-)【链接】")
if(版本名==nil) then
版本名="获取失败"
end
if(版本==nil) then
版本="0"
end
if(内容==nil) then
内容="获取失败"
end
if(链接==nil) then
提示("服务器参数配置错误，请过段时间再次尝试")
end
if(版本 > versioncode) then
tt.stop()
对话框()
.setCancelable(false)
.设置标题("检测到更新")
.设置消息("版本："..version.."→"..版本名.."\n更新内容："..内容)
.设置积极按钮("下载更新",function()
下载文件(链接)
对话框()
.setCancelable(false)
.设置标题("提示")
.设置消息("软件已经开始下载\n请查看任务栏中的 蔚蓝_版本号.apk 文件")
.设置积极按钮("退出",function()
退出程序()
end)
.显示()
end)
.设置消极按钮("退出软件",function()
退出程序()
end)
.显示()
else
tt.stop()
end
end
Http.get(url,nil,"UTF-8",nil,function(code,content,cookie,header)
if(code==200 and content)then
过滤(content)
else
tt.stop()
提示("网络异常 "..code)
end
end)
end
检测更新("https://greenchennai.github.io/serve-NAI/APPS/bai.txt")  