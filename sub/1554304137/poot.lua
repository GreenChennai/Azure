webView.onLongClick=function()
  hitTestResult = webView.getHitTestResult()
  if (hitTestResult.getType() == WebView.HitTestResult.IMAGE_TYPE or hitTestResult.getType() == WebView.HitTestResult.SRC_IMAGE_ANCHOR_TYPE)then
    import "com.tencent.qq.widget.*"
    import "android.view.WindowManager"

    MyMenuDialog=MenuDialog(this);--设置弹窗进出动画
    MyMenuDialog.setButton("取消",MenuDialog.setTextColor.BLUE);--设置取消按钮文字及颜色

    MyMenuDialog.addItem("保存图片",MenuDialog.setTextColor.BLUE,--设置选项文字及颜色
    {onClick = function()
        picUrl = hitTestResult.getExtra() 
        Http.download(picUrl,"/sdcard/Pictures/蔚蓝图片/花瓣/"..os.date("%Y-%m-%d-%H-%M-%S")..".png",function(a)
        end)
        弹出消息("图片已保存于/sdcard/Pictures/蔚蓝图片/花瓣/")

      end});
    MyMenuDialog.addItem("保存动态图片",MenuDialog.setTextColor.BLUE,--设置选项文字及颜色

    {onClick = function()
        picUrl = hitTestResult.getExtra() 
        Http.download(picUrl,"/sdcard/Pictures/蔚蓝图片/花瓣/"..os.date("%Y-%m-%d-%H-%M-%S")..".gif",function(a)
        end)
        弹出消息("图片已经保存到/sdcard/Pictures/蔚蓝图片/花瓣/")

      end});
      



    MyMenuDialog.addItem("复制图片链接",MenuDialog.setTextColor.BLUE,--设置选项文字及颜色
    {onClick = function()
        picUrl = hitTestResult.getExtra()
        复制文本(picUrl)
        弹出消息("已复制:" .. picUrl)
      end});
    MyMenuDialog.addItem("分享给朋友",MenuDialog.setTextColor.BLUE,--设置选项文字及颜色
    {onClick = function()
        picUrl = hitTestResult.getExtra()
        分享文本("我看到一个好看的图片，分享给你:" ..picUrl) 
      end});
    MyMenuDialog.addItem("添加书签",MenuDialog.setTextColor.BLUE,--设置选项文字及颜色

    {onClick = function()
        addFav()
      end});
    MyMenuDialog.addItem("页内查找",MenuDialog.setTextColor.BLUE,--设置选项文字及颜色
    {onClick = function()
        InputLayout={
          LinearLayout;
          orientation="vertical";
          Focusable=true,
          backgroundColor="#FFFFFFFF";
          FocusableInTouchMode=true,
          {
            LinearLayout;
            orientation="horizontal";--横排列

            {
              LinearLayout;
              orientation="vertical";
              {

                EditText;--编辑框
                textSize="15sp",
                hint="请输入要查找的关键词";
                layout_marginTop="5dp";--顶距
                layout_width="55%w";--宽
                layout_gravity="center",
                id="edit5";
              };

            };
            {
              LinearLayout;
              orientation="horizontal";
              {
                Button;
                text="查找";
                textSize="15";--文本大小
                layout_height="8%h";
                layout_width="20%w";
                layout_marginTop="5dp";
                textColor="#ff008b5f";--文本颜色
                backgroundColor="#00CB5C89";--背景色
                onClick=function()
                  searchKeyword=edit5.Text
                  页内查找(edit5.Text)
                end
              };
              {
                Button;
                text="下翻";
                textSize="15";--文本大小
                layout_height="8%h";
                layout_width="20%w";
                layout_marginTop="5dp";
                textColor="#ff008b5f";--文本颜色
                backgroundColor="#00CB5C89";--背景色
                onClick=function()
                  页内查找(searchKeyword)
                end
              };

            };

          };

        };
        
        AlertDialog.Builder(this)
        .setTitle("页内查找")--对话框标题
        .setView(loadlayout(InputLayout))--自定义布局
        .show()
      end});

    MyMenuDialog.show();--显示弹窗

  end
end