--公告
Http.get("https://greenchennai.github.io/serve-NAI/APPS/news.txt",nil,nil,nil,function(code,content)
if code==200 then
  content=content:gsub("！","\n") or content;
状态=content:match("【开关】(.-)【开关】")
标题=content:match("【标题内容】(.-)【标题内容】")
公告=content:match("【公告内容】(.-)【公告内容】")
 
if 状态=="开" then
  AboutLayout={--布局
  LinearLayout;
  orientation="vertical";
  Focusable=true,
  FocusableInTouchMode=true,

{
TextView;--文本控件
layout_width='fill';--文本宽度
layout_height='40dp';--文本高度
gravity='center';--重力属性
textColor='#FFFFFFFF';--文字颜色
text=标题;--显示的文字
textSize='20sp';--文字大小
background='#ff0099ff';--布局背景颜色(或者图片路径)
};
{
ScrollView,--纵向滚动
layout_width='fill';--宽
layout_height='fill';--高
{
TextView;--文本控件
layout_width='fill';--文本宽度
layout_height='wrap';--文本高度
textColor='#FF7D7D7D';--文字颜色
--layout_marginLeft='10dp';--布局左距
gravity='center';--重力属性,删除则不居中
text=公告;--显示的文字
textSize='18sp';--文字大小
};
};
{
TextView;--文本控件
layout_width='fill';--文本宽度
layout_height='1dp';--文本高度
background='#FFDBDBDB';--布局背景颜色(或者图片路径)
};
{
TextView;--文本控件
layout_width='fill';--文本宽度
layout_height='40dp';--文本高度
gravity='center';--重力属性
textColor='#FF7D7D7D';--文字颜色
text='关闭';--显示的文字
textSize='15sp';--文字大小
style="?android:attr/buttonBarButtonStyle";
onClick=function() 
task(200,function()
关闭对话框()
end)
end
};
};
dlg=AlertDialog.Builder(this).setView(loadlayout(AboutLayout)).show()
function 关闭对话框()
  return dlg and dlg.dismiss()
end
 else
 end
end
end)