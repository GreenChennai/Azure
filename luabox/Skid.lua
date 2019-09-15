--程序启动时会执行的事件
--由JunSilck二次整合
function CircleButton(view,InsideColor,radiu)
  import "android.graphics.drawable.GradientDrawable"
  drawable = GradientDrawable() 
  drawable.setShape(GradientDrawable.RECTANGLE) 
  drawable.setColor(InsideColor)
  drawable.setCornerRadii({radiu,radiu,radiu,radiu,radiu,radiu,radiu,radiu});
  view.setBackgroundDrawable(drawable)
end
角度=50
控件id=sidebar
控件颜色=0xFFFFFFFF
CircleButton(控件id,控件颜色,角度)

flt=sidebar.getLayoutParams( )
flt.setMargins(200, 200, 800, 450)
sidebar.setLayoutParams(flt)
--以上代码是侧滑栏圆角，高度，宽度，和上下边距的代码。

--获取页面根布局
local lay=drawerLayout.getChildAt(1)

--监听侧滑滑动事件
local pio=this.getWidth()*0.1
drawerLayout.setDrawerListener(DrawerLayout.DrawerListener{
  onDrawerSlide=function(v,i)
    lay.setScaleX(1-i/13.5).setScaleY(1-i/12.5)--页面缩放
    lay.setTranslationX((({0,0,1,0,-1})[v.LayoutParams.gravity])*(i*0.5*pio))--页面位移(其中那段奇怪的表是用于判断位移方向，不过依然仅支持左右侧滑)
    --sidebar.setScaleX(i).setScaleY(i)--侧滑栏缩放
  end})
--以上是侧滑栏做边距和缩放动画的代码
--可自行修改，出bug别找我
--可添加侧滑栏图片，上方还是全侧滑栏都可以，有需要圆角的地方请自行抠图
--希望珍惜别的工程开源