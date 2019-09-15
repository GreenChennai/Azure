--程序启动时会执行的事件
--仿一个木函按钮布局
shamrock=
{
  LinearLayout;
  orientation="vertical";
  layout_height="fill";
  layout_width="fill";
  BackgroundColor="#FFFFFF";
  {
    ScrollView,--纵向滚动
    layout_width='fill';--宽
    layout_height='fill';--高
    {
      LinearLayout;
      orientation="horizontal";
      Elevation="300dp";
      layout_width="fill";
      layout_height="100%h";
      {
        LinearLayout;
        orientation="vertical";
        layout_width="48%w";
        layout_height="fill";
        layout_marginLeft="2%w";
        --第一列
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="two";
            {
              TextView;
              textSize="14sp";
              text="JAViewer",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="bird";
            {
              TextView;
              textSize="14sp";
              text="小草[草榴]",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="needle";
            {
              TextView;
              textSize="14sp";
              text="暂无",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="line";
            {
              TextView;
              textSize="14sp";
              text="暂无",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="Mary";
            {
              TextView;
              textSize="14sp";
              text="暂无",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="white";
            {
              TextView;
              textSize="14sp";
              text="暂无",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="element";
            {
              TextView;
              textSize="14sp";
              text="暂无",
              textColor="#333333";
            };
          };
        },
        --第二列
      };
      {
        LinearLayout;
        orientation="vertical";
        layout_width="48%w";
        layout_height="fill";
        layout_marginRight="2%w";
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="Thunder";
            {
              TextView;
              textSize="14sp";
              text="PicACG哔咔",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="bird2";
            {
              TextView;
              textSize="14sp";
              text="Ehviewer[看本子]",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="clever";
            {
              TextView;
              textSize="14sp";
              text="暂无",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="close";
            {
              TextView;
              textSize="14sp";
              text="暂无",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="Rose";
            {
              TextView;
              textSize="14sp";
              text="暂无",
              textColor="#333333";
            };
          };
        }, 
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="stone";
            {
              TextView;
              textSize="14sp";
              text="暂无",
              textColor="#333333";
            };
          };
        },
        {
          CardView;
          layout_gravity="center";
          layout_marginTop="2%h"; 
          elevation="0dp";
          layout_width="45%w";
          layout_height="45dp";
          cardBackgroundColor="#FFF7F7F7";
          radius="5dp";
          {
            LinearLayout;
            layout_margin="0dp";
            layout_width="fill";
            layout_height="fill";
            gravity="center"; 
            id="more";
            {
              TextView;
              textSize="14sp";
              text="更多",
              textColor="#333333";
            };
          };
        },
      }; 
    };
  };
};
webView.addView(loadlayout(shamrock))
--项目点击事件
two.onClick=function()
--JAV
  if pcall(function() activity.getPackageManager().getPackageInfo("io.github.javiewer",0) end) then
  --打开某APP
--导入包
import "android.content.*"
intent = Intent();
componentName = ComponentName("io.github.javiewer","io.github.javiewer.activity.StartActivity"); 
intent.setComponent(componentName); 
activity.startActivity(intent);
  else
    弹出消息("您未安装该板块模块")
    对话框()
.设置标题("提示：")
.设置消息("检测到您并未安装模块，是否现在安装，安装后才能使用")
.设置积极按钮("安装",function()
  import "android.content.*"
import "android.net.*"
intent = Intent();
intent.setAction("android.intent.action.VIEW");
content_url = Uri.parse("https://www.lanzous.com/i3oj1xa");
intent.setData(content_url);
activity.startActivity(intent);
end)
.设置消极按钮("离开")
.显示()
end
end

Thunder.onClick=function()
--哔咔
  if pcall(function() activity.getPackageManager().getPackageInfo("com.picacomic.fregata",0) end) then
--打开某APP
--导入包
import "android.content.*"
--启动包名和类名
intent = Intent();
componentName = ComponentName("com.picacomic.fregata","com.picacomic.fregata.activities.SplashActivity"); 
intent.setComponent(componentName); 
activity.startActivity(intent);
  else
    弹出消息("您未安装该板块模块")
    对话框()
.设置标题("提示：")
.设置消息("检测到您并未安装模块，是否现在安装，安装后才能使用")
.设置积极按钮("安装",function()
  import "android.content.*"
import "android.net.*"
intent = Intent();
intent.setAction("android.intent.action.VIEW");
content_url = Uri.parse("https://www.lanzous.com/i66dgof");
intent.setData(content_url);
activity.startActivity(intent);
end)
.设置消极按钮("离开")
.显示()
end
end

bird.onClick=function()
  if pcall(function() activity.getPackageManager().getPackageInfo("com.cl.newt66y",0) end) then
--打开某APP
--导入包
import "android.content.*"
--启动包名和类名
intent = Intent();
componentName = ComponentName("com.cl.newt66y","com.cl.newt66y.MainActivity"); 
intent.setComponent(componentName); 
activity.startActivity(intent);
  else
    弹出消息("您未安装该板块模块")
    对话框()
.设置标题("提示：")
.设置消息("检测到您并未安装模块，是否现在安装，安装后才能使用")
.设置积极按钮("安装",function()
  import "android.content.*"
import "android.net.*"
intent = Intent();
intent.setAction("android.intent.action.VIEW");
content_url = Uri.parse("https://www.lanzous.com/i3oj4te");
intent.setData(content_url);
activity.startActivity(intent);
end)
.设置消极按钮("离开")
.显示()
end
end
bird2.onClick=function()
  if pcall(function() activity.getPackageManager().getPackageInfo("com.hippo.ehviewer",0) end) then
--打开某APP
--导入包
import "android.content.*"
--启动包名和类名
intent = Intent();
componentName = ComponentName("com.hippo.ehviewer","com.hippo.ehviewer.ui.MainActivity"); 
intent.setComponent(componentName); 
activity.startActivity(intent);
  else
    弹出消息("您未安装该板块模块")
    对话框()
.设置标题("提示：")
.设置消息("检测到您并未安装模块，是否现在安装，安装后才能使用")
.设置积极按钮("安装",function()
  import "android.content.*"
import "android.net.*"
intent = Intent();
intent.setAction("android.intent.action.VIEW");
content_url = Uri.parse("https://www.lanzous.com/i3oj4wh");
intent.setData(content_url);
activity.startActivity(intent);
end)
.设置消极按钮("离开")
.显示()
end
end
needle.onClick=function()
  弹出消息("暂无")
end
clever.onClick=function()
  弹出消息("暂无")
end
line.onClick=function()
  弹出消息("暂无")
end
close.onClick=function()
  弹出消息("暂无")
end
Mary.onClick=function()
  弹出消息("暂无")
end
white.onClick=function()
  弹出消息("暂无")
end
Rose.onClick=function()
  弹出消息("暂无")
end
stone.onClick=function()
  弹出消息("暂无")
end
element.onClick=function()
  弹出消息("暂无")
end
more.onClick=function()
  弹出消息("暂无更多")
end