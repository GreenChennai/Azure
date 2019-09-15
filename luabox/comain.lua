--退出二次确认
function onKeyDown(key)
  if key==4 then
    if drawerLayout.isDrawerOpen(3) then
      drawerLayout.closeDrawer(3)
    elseif webView.canGoBack() then
      webView.goBack()
    else
      对话框()
.设置标题("退出")
.设置消息("你确定要退出吗?")
.设置积极按钮("确定",function()
  退出程序()
end)
.设置消极按钮("取消")
.显示()
     end
        end
      return true
   end

manager = activity.getSystemService(Context.CONNECTIVITY_SERVICE); 
gprs = manager.getNetworkInfo(ConnectivityManager.TYPE_MOBILE).getState(); 
if tostring(gprs)== "CONNECTED" then
  弹出消息("当前为数据网络，请注意流量的使用")
end
connManager = activity.getSystemService(Context.CONNECTIVITY_SERVICE)
mWifi = connManager.getNetworkInfo(ConnectivityManager.TYPE_WIFI);
if tostring(mWifi):find("none)") then
  --未连接
else
  --连接
  弹出消息("当前为wifi网络")
end