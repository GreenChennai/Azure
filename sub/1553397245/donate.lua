--[[
捐赠页面 by 幻了个城fly
使用时请在应用中的「关于页面」注明开发者
--]]

require "import"
import "loadlayout"
import "android.app.*"
import "android.os.*"
import "android.widget.*"
import "android.view.*"
import "android.graphics.drawable.BitmapDrawable"
import "android.graphics.Color"
import "android.support.v7.widget.*"

--背景颜色
color1="#FFFFFFFF"
--标题颜色
color2="#FF000000"
--副标题颜色
color3="#60000000"
--按钮副色
btnColor1="#FF3DA3DF"
--按钮主色
btnColor2="#FF2C7BF2"
--支付宝转账二维码网址
alipayUrl="https://QR.ALIPAY.COM/FKX00987VLPKNRRVLEGI01"
--支付宝红包二维码网址
alipayHongbaoUrl="https://qr.alipay.com/cpx015131ha53vtxhhx5p60"

--沉浸状态栏
activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS).setStatusBarColor(0xffffffff);
if tonumber(Build.VERSION.SDK) >= 23 then
  activity.getWindow().getDecorView().setSystemUiVisibility(View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
end

--初始化布局表
layout={
  LinearLayout;
  orientation="vertical";
  layout_width="fill";
  layout_height="fill";
  {
    RelativeLayout;
    layout_width="fill";
    paddingBottom="4dp";
    layout_height="48dp";
    paddingTop="4dp";
    gravity="left";
    background=color1;
    {
      ImageButton;
      layout_width="30dp";
      style="?android:attr/buttonBarButtonStyle";
      layout_centerVertical="true";
      padding="0dp";
      id="back";
      layout_marginLeft="10dp";
      paddingRight="2dp";
      layout_marginRight="12dp";
      layout_height="fill";
      paddingLeft="2dp";
      src="drawable/chevron_left.png";
      background="#00000000";
      colorFilter=color2;
    };
    {
      TextView;
      layout_width="wrap_content";
      text="捐赠";
      layout_centerVertical="true";
      id="title";
      textColor=color2;
      layout_height="fill";
      gravity="center";
      textSize="20dp";
      layout_toRightOf="back";
    };
  };
  {
    ScrollView;
    id="main";
    background=color1;
    {
      LinearLayout;
      orientation="vertical";
      layout_width="fill";
      layout_height="fill";
      {
        CardView;
        layout_width="fill";
        elevation="4dp";
        layout_margin="10dp";
        layout_marginLeft="20dp";
        layout_marginRight="20dp";
        layout_height="wrap";
        id="cardAlipay";
        radius="10dp";
        {
          RelativeLayout;
          background=color1;
          id="cardInnerAlipay";
          {
            RelativeLayout;
            id="imgHolder1";
            layout_width="fill";
            layout_height="wrap";
            {
              ImageView;
              id="img1";
              src="donate1.png";
              layout_width="213dp";
              layout_height="120dp";
              layout_centerInParent="true";
              layout_marginTop="5dp";
            };
          };
          {
            RelativeLayout;
            layout_below="imgHolder1";
            layout_width="fill";
            padding="10dp";
            {
              TextView;
              text="支付宝捐赠";
              textColor=color2;
              textSize="16sp";
              id="title1";
            };
            {
              TextView;
              text="请我喝阔落";
              layout_alignLeft="title1";
              layout_below="title1";
              textColor=color3;
            };
            {
              RelativeLayout;
              layout_alignParentRight="true";
              elevation="0dp";
              layout_height="35dp";
              layout_centerVertical="true";
              background="#FF2C7BF2";
              layout_width="100dp";
              id="buttonCard1";
              {
                Button;
                style="?android:attr/buttonBarButtonStyle";
                layout_width="fill";
                textColor="#FFFFFF";
                layout_height="fill";
                text="捐赠";
                padding="5dp";
                background="#00000000";
                id="buttonAlipay";
              };
            };
          };
        };
      };
      {
        CardView;
        layout_width="fill";
        elevation="4dp";
        layout_margin="10dp";
        layout_marginLeft="20dp";
        layout_marginRight="20dp";
        layout_height="wrap";
        id="cardHongbao";
        radius="10dp";
        {
          RelativeLayout;
          background=color1;
          id="cardInnerHongbao";
          {
            RelativeLayout;
            id="imgHolder2";
            layout_width="fill";
            layout_height="wrap";
            {
              ImageView;
              id="img2";
              src="donate2.png";
              layout_width="213dp";
              layout_height="120dp";
              layout_centerInParent="true";
              layout_marginTop="5dp";
            };
          };
          {
            RelativeLayout;
            layout_below="imgHolder2";
            layout_width="fill";
            padding="10dp";
            {
              TextView;
              text="支付宝红包";
              textColor=color2;
              textSize="16sp";
              id="title2";
            };
            {
              TextView;
              text="来个大红包";
              layout_alignLeft="title2";
              layout_below="title2";
              textColor=color3;
            };
            {
              RelativeLayout;
              layout_alignParentRight="true";
              elevation="0dp";
              layout_height="35dp";
              layout_centerVertical="true";
              background="#FF2C7BF2";
              layout_width="100dp";
              id="buttonCard2";
              {
                Button;
                textColor="#FFFFFF";
                layout_width="fill";
                style="?android:attr/buttonBarButtonStyle";
                layout_height="fill";
                text="领取";
                padding="5dp";
                background="#00000000";
                id="buttonHongbao";
              };
            };
          };
        };
      };
      {
        CardView;
        layout_width="fill";
        elevation="4dp";
        layout_margin="10dp";
        layout_marginLeft="20dp";
        layout_marginRight="20dp";
        layout_height="wrap";
        id="cardWechat";
        radius="10dp";
        {
          RelativeLayout;
          background=color1;
          id="cardInnerWechat";
          {
            RelativeLayout;
            id="imgHolder3";
            layout_width="fill";
            layout_height="wrap";
            {
              ImageView;
              id="img3";
              src="donate3.png";
              layout_width="213dp";
              layout_height="120dp";
              layout_centerInParent="true";
              layout_marginTop="5dp";
            };
          };
          {
            RelativeLayout;
            layout_below="imgHolder3";
            layout_width="fill";
            padding="10dp";
            {
              TextView;
              text="微信捐赠";
              textColor=color2;
              textSize="16sp";
              id="title3";
            };
            {
              TextView;
              text="请我喝咖啡";
              layout_alignLeft="title3";
              layout_below="title3";
              textColor=color3;
            };
            {
              RelativeLayout;
              layout_alignParentRight="true";
              elevation="0dp";
              layout_height="35dp";
              layout_centerVertical="true";
              background="#FF2C7BF2";
              layout_width="100dp";
              id="buttonCard3";
              {
                Button;
                style="?android:attr/buttonBarButtonStyle";
                layout_width="fill";
                textColor="#FFFFFF";
                layout_height="fill";
                text="捐赠";
                padding="5dp";
                background="#00000000";
                id="buttonWechat";
              };
            };
          };
        };
      };
    };
  };
};

--控件圆角
function CircleButton(view,InsideColor,radiu)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable() 
  drawable.setShape(GradientDrawable.RECTANGLE) 
  drawable.setColor(InsideColor)
  drawable.setCornerRadii({radiu,radiu,radiu,radiu,radiu,radiu,radiu,radiu});
  view.setBackgroundDrawable(drawable)
end
activity.setContentView(loadlayout(layout))

--卡片圆角处理
CircleButton(cardAlipay,Color.parseColor(color1),30)
CircleButton(cardInnerAlipay,Color.parseColor(color1),30)

CircleButton(cardHongbao,Color.parseColor(color1),30)
CircleButton(cardInnerHongbao,Color.parseColor(color1),30)

CircleButton(cardWechat,Color.parseColor(color1),30)
CircleButton(cardInnerWechat,Color.parseColor(color1),30)

--按钮圆角处理
btnDrawable = GradientDrawable(GradientDrawable.Orientation.TL_BR,{Color.parseColor(btnColor1),Color.parseColor(btnColor2)});
btnDrawable.setShape(GradientDrawable.RECTANGLE)
btnDrawable.setCornerRadii({500,500,500,500,500,500,500,500});
buttonCard1.setBackground(btnDrawable);
buttonCard2.setBackground(btnDrawable);
buttonCard3.setBackground(btnDrawable);

--初始化按钮事件
buttonAlipay.onClick=function()
  print("启动支付宝中")
  import "android.content.Intent"
  import "android.net.Uri"
  xpcall(function() 
    local url="alipayqr://platformapi/startapp?saId=10000007&qrcode="..alipayUrl
    activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)));
  end,
  function()
    local url = alipayUrl
    activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)));
  end)
end
buttonHongbao.onClick=function()
  print("启动支付宝中")
  import "android.content.Intent"
  import "android.net.Uri"
  xpcall(function() 
    local url="alipayqr://platformapi/startapp?saId=10000007&qrcode="..alipayHongbaoUrl
    activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)));
  end,
  function()
    local url = alipayHongbaoUrl;
    activity.startActivity(Intent(Intent.ACTION_VIEW, Uri.parse(url)));
  end)
end
function DialogButtonFilter(dialog,button,WidgetColor)
  if Build.VERSION.SDK_INT >= 21 then
    import "android.graphics.PorterDuffColorFilter"
    import "android.graphics.PorterDuff"
    if button==1 then
      dialog.getButton(dialog.BUTTON_POSITIVE).setTextColor(WidgetColor)
    elseif button==2 then
      dialog.getButton(dialog.BUTTON_NEGATIVE).setTextColor(WidgetColor)
    elseif button==3 then
      dialog.getButton(dialog.BUTTON_NEUTRAL).setTextColor(WidgetColor)
    end
  end
end
buttonWechat.onClick=function()
  qrcodeImg = ImageView(this)
  qrcodeImg.setImageBitmap(loadbitmap("wechat.png"))
  qrcodeImg.setScaleType(ImageView.ScaleType.CENTER)
  print("由于微信限制，请手动截图")
  dl=AlertDialog.Builder(this)
  .setView(qrcodeImg)
  .setTitle("捐赠二维码")
  .setPositiveButton("打开微信",{onClick=function(v)
      packageName="com.tencent.mm"
      import "android.content.Intent"
      import "android.content.pm.PackageManager"
      manager = activity.getPackageManager()
      open = manager.getLaunchIntentForPackage(packageName)
      this.startActivity(open)
    end})
  .setNegativeButton("关闭",nil)
  imgDia=dl.show()
  DialogButtonFilter(imgDia,1,Color.parseColor(btnColor2))
  DialogButtonFilter(imgDia,2,Color.parseColor(btnColor2))
end
back.onClick=function()
  退出页面()
end