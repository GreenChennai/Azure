--关闭阴影
drawerLayout.setScrimColor(0)

--添加背景
drawerLayout.addView(loadlayout({
  ImageView,
  id="background",
  scaleType="fitXY",
  src="drawable/background.png",
}),0)

--获取页面根布局
local lay=drawerLayout.getChildAt(1)

--监听侧滑滑动事件
local pio=this.getWidth()*0.1
drawerLayout.setDrawerListener(DrawerLayout.DrawerListener{
  onDrawerSlide=function(v,i)
    lay.setScaleX(1-i/7.5).setScaleY(1-i/8.5)--页面缩放
    lay.setTranslationX((({0,0,1,0,-1})[v.LayoutParams.gravity])*(i*7*pio))--页面位移(其中那段奇怪的表是用于判断位移方向，不过依然仅支持左右侧滑)
    --sidebar.setScaleX(i).setScaleY(i)--侧滑栏缩放
  end})