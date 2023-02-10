######################
#
# Magisk模块安装脚本
# 编写:Github@a406010503 (聖小熊)
#
######################

# 调试标记1
DUBUG_FLAG=false
SKIPMOUNT=false

MODULE_DATE=`grep_prop module_date $TMPDIR/module.prop`
TOO_EARLY_DATE=`grep_prop too_early_date $TMPDIR/module.prop`
BUILD_DATE=`getprop ro.system.build.date`
    
# 是否加载 system.prop
PROPFILE=false

# 是否执行 post-fs-data 脚本
POSTFSDATA=false

# 是否执行 service 脚本
LATESTARTSERVICE=false

REPLACE=""

# 获取Android 版本
var_version="`grep_prop ro.build.version.release`"

# 获取MIUI大版本
var_MIUI_version="`grep_prop ro.miui.ui.version.name`"

# 获取模块版本
module_version="`grep_prop version $TMPDIR/module.prop`"

# 获取模块名称
module_name="`grep_prop name $TMPDIR/module.prop`"

# 获取模块id
module_id="`grep_prop id $TMPDIR/module.prop`"

# 获取模块作者
module_author="`grep_prop author $TMPDIR/module.prop`"

# 获取模块支持的机型
module_require_version="`grep_prop require_version $TMPDIR/module.prop`"

# 获取模块支持的Android版本
module_require_device="`grep_prop require_device $TMPDIR/module.prop`"

# 获取模块支持的MIUI大版本
module_require_MIUI_version="`grep_prop require_MIUI_version $TMPDIR/module.prop`"

# 獲取運行環境
MIUI_VERSION="`getprop ro.system.build.version.incremental`"
id="`grep_prop id $TMPDIR/module.prop`"
var_device="`getprop ro.product.device`"
var_version="`grep_prop ro.build.version.release`"

# 检测Android 版本
    if [ $API -lt 30 ] || [ $API -gt 33 ] ; then
        ui_print " "
        ui_print " * 警告：當前Android版本無法使用！"
        ui_print " *Warning: Unavailable for 
        current Android version!"
        ui_print " "
        ui_print "- 已退出安裝"
        ui_print "  Install exited"
        ui_print " "
        sleep 2
        Warning=true
        exit 1
    fi
  
  ui_print "*******************************************"
  ui_print "   $module_name "
  ui_print "   作者(author): $module_author"
  ui_print "   版本(version): $module_version"
  sleep 2
  ui_print "*******************************************"
  ui_print "   裝置資訊(Device Information)"
  ui_print "   機型(device): $var_device"
  ui_print "   Android 版本: $var_version"
  ui_print "   Android API 版本: $API"
  ui_print "   MIUI 版本: $MIUI_VERSION"
  sleep 2
  ui_print "*******************************************"
  ui_print "   模組說明: 
     具有徠卡攝像功能與演算法，
     詳細開啟功能請參照Github上的本專案說明頁
     
  Mod description:
     With Leica camera functions and algorithms,
     For details on enabling functions, 
     please refer to the project description
     page on Github
     
     https://github.com/a406010503/Miui_Camera "
     ui_print " "
     sleep 2
  ui_print "*******************************************"
ui_print ""
  ui_print "- 是否安裝智慧構圖套裝元件?（MTK不支援）"
ui_print "  Is the Xiaomi ProCut Kit installed?(MTK not supported)"
ui_print ""
sleep 1
ui_print "  音量鍵 + = 是"
ui_print "  Volume keys + = Yes"
ui_print " "
ui_print "  音量鍵 - = 否"
ui_print "  Volume keys - = No"
ui_print " "

  chooseport

if chooseport; then
      
ui_print "- 您選擇安裝智慧構圖套裝元件"
ui_print "  You choose to install the Xiaomi ProCut Kit component"
sleep 2
ui_print ""
ui_print "- 將解除已安裝的 Bokeh 更新..."
ui_print "  Uninstall Bokeh update installed..."
pm uninstall-system-updates com.miui.extraphoto
cp -rf $MODPATH/MiuiExtraPhoto $MODPATH/system/priv-app
    else
     {
      ui_print "- 您選擇忽略..."
      ui_print "  You chose to ignore..."
rm -rf $MODPATH/system/priv-app/MiuiExtraPhoto
rm -rf $MODPATH/system/lib
rm -rf $MODPATH/system/lib64
}
    fi
sleep 3
ui_print ""
ui_print "- 為了防止不看說明，以下題目請仔細作答"
ui_print "  In order to prevent you from not 
  reading the instructions, please answer the 
  following questions carefully"
ui_print " "
sleep 3
ui_print "- 如果沒有答題正確你將無法使用此項目"
ui_print "  you will not be able to use this item 
  without answering the question correctly"
sleep 3
ui_print " "
ui_print "- 請問安裝相機時核心破解應該幾開？"
ui_print "  How many times should the Core Patch be opened 
  when installing the camera?"
ui_print " "
sleep 1
ui_print "  音量鍵 + = 五項全開"
ui_print "  Volume key + = all five on"
ui_print " "
ui_print "  音量鍵 - = 只開三項即可"
ui_print "  Volume key - = only three items can be turned on"
ui_print " "

chooseport

if chooseport; then
ui_print "- 您選擇了五項全開！"
ui_print "  You selected all five!"
ui_print " "
ui_print "✓ 恭喜回答正確！"
ui_print "  Congrats on getting it right!"
ui_print " "
echo

else
ui_print "- 您選擇了只開三項即可！"
ui_print "  You have selected only three options!"
ui_print " "
ui_print "- 您未認真閱讀修改說明，安裝將退出，所有操作將回滾！"
ui_print "  You did not read the warning carefully, 
  the installation will Exit and
  all operations will be rolled back!"
ui_print " "
sleep 2
ui_print "- 已退出安裝"
ui_print "  Install exited"
ui_print " "
exit 1

fi
sleep 3
ui_print "- 是否已認真看完修改說明與所有警告提示？"
ui_print "  Have you read the modification 
  instructions and all warnings carefully?"
ui_print " "
sleep 3
ui_print "- 選擇否以繼續安裝"
ui_print "  choose no to continue installation"
ui_print " "
sleep 1
ui_print "  音量鍵 + = 是"
ui_print "  Volume keys + = Yes"
ui_print " "
ui_print "  音量鍵 - = 否"
ui_print "  Volume keys - = No"
ui_print " "

chooseport

if chooseport; then
ui_print "- 您選擇了是！"
ui_print "  You selected yes!"
ui_print " "
ui_print "- 您未認真閱讀警告提示，安裝將退出，所有操作將回滾！"
ui_print "  You did not read the warning carefully, 
  the installation will Exit and 
  all operations will be rolled back!"
ui_print " "
sleep 2
ui_print "- 已退出安裝"
ui_print "  Install exited"
ui_print " "
exit 1

else
ui_print "- 您選擇了否！"
ui_print "  You chose No!"
ui_print " "
ui_print "✓ 安裝將繼續進行..."
ui_print "  Installation will continue..."
ui_print " "
sleep 3
echo

fi
  ui_print "- 正在為 $ARCH SDK $API 設備安裝..."
  ui_print "  Installing for $ARCH SDK $API device..."
  ui_print " "
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
  TMPAPKDIR=/data/local/tmp
  cp -rf $MODPATH/system/priv-app/MiuiCamera/MiuiCamera.apk $TMPAPKDIR
  result=$(pm install ${TMPAPKDIR}/MiuiCamera.apk 2>&1)
  if [ $result = Success ];then
    echo
    ui_print "- 正在提取模組文件"
    ui_print "  Extracting mod files"
    ui_print " "
    sleep 2
    ui_print "- 將安裝在系統分區..."
    ui_print "  will be installed on the system partition..."
    ui_print " "
    sleep 2
    ui_print "- Apk簽名校驗已啟用"
    ui_print "  Apk signature verification enabled"
    ui_print " "
    sleep 2
    ui_print "✓ 相機安裝完成"
    ui_print "  Camera installation completed"
    ui_print " "
    echo
    ui_print "- 相機既有更新將被解除安裝..."
    ui_print "  Camera existing updates will be uninstalled..."
    ui_print " "
  fi
    # 清除缓存
  ui_print "- 開始清理暫存碎片"
  ui_print "  Start clearing system cache files"
  ui_print " "
  sleep 2
  ui_print "- 刪除 package_cache 文件"
  ui_print "  delete package_cache file"
  ui_print " "
  sleep 2
    /dev/*/.magisk/busybox/fstrim -v /cache 
    rm -rf /data/system/package_cache/*
  ui_print "- 清理暫存完成"
  ui_print "  cleaning cache files done"
  ui_print " "
    # 清理舊模組
    mkdir -p $MODPATH/system/priv-app/MiuiCamera/lib/${Type}
    mkdir -p $MODPATH/Camera
    unzip -o $MODPATH/system/priv-app/MiuiCamera/MiuiCamera.apk -d $MODPATH/Camera >&2
    cp -rf $MODPATH/Camera/lib/${Wenj}/* $MODPATH/system/priv-app/MiuiCamera/lib/${Type}
    rm -rf $MODPATH/Camera
touch /data/adb/modules/MIUI_MiuiCamera/remove
ui_print "- 正在刪除舊模組（如果已安裝）"
ui_print "  Removing old mods (if installed)"
ui_print " "
sleep 2
ui_print "
- 提醒：
  刷入後若卡米請在
  Recovery→進階→檔案管理
  →data→adb→modules
  刪除對應的$id文件夾，不會就Google

- remind:
  If the boot loop after flashing, please
  Recovery→Advanced→File Management
  →data→adb→modules
  Delete the corresponding $id folder, 
  If you don't know, use Google search to find 
  the answer
"
sleep 2
tmp_list="MiuiCamera"

dda=/data/dalvik-cache/arm
[ -d $dda"64" ] && dda=$dda"64"
for i in $tmp_list; do
	rm -f $dda/system@*@"$i"*
done