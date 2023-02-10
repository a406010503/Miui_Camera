# External Tools
chmod -R 0755 $MODPATH/common/addon/Volume-Key-Selector/tools

chooseport_legacy() {
  # Keycheck binary by someone755 @Github, idea for code below by Zappo @xda-developers
  # Calling it first time detects previous input. Calling it second time will do what we want
  [ "$1" ] && local delay=$1 || local delay=10
  local error=false
  while true; do
    timeout 0 $MODPATH/common/addon/Volume-Key-Selector/tools/$ARCH32/keycheck
    timeout $delay $MODPATH/common/addon/Volume-Key-Selector/tools/$ARCH32/keycheck
    local sel=$?
    if [ $sel -eq 42 ]; then
      return 0
    elif [ $sel -eq 41 ]; then
      return 1
    elif $error; then
      abort "- 未檢測到按下音量鍵，安裝失敗！
  Volume down not detected, 
  installation failed!
  "
    else
      error=true
      echo "- 未檢測到按下音量鍵，請再試一次！
  Volume key press not detected, 
  please try again!
  "
    fi
  done
}

chooseport() {
  # Original idea by chainfire and ianmacd @xda-developers
  [ "$1" ] && local delay=$1 || local delay=10
  local error=false 
  while true; do
    local count=0
    while true; do
      timeout $delay /system/bin/getevent -lqc 1 2>&1 > $TMPDIR/events &
      sleep 0.5; count=$((count + 1))
      if (`grep -q 'KEY_VOLUMEUP *DOWN' $TMPDIR/events`); then
        return 0
      elif (`grep -q 'KEY_VOLUMEDOWN *DOWN' $TMPDIR/events`); then
        return 1
      fi
      [ $count -gt 6 ] && break
    done
    if $error; then
      # abort "Volume key not detected!"
      echo "- 未檢測到按下音量鍵，嘗試keycheck方法
  Volume key pressed not detected, 
  try keycheck method
"
      export chooseport=chooseport_legacy VKSEL=chooseport_legacy
      chooseport_legacy $delay
      return $?
    else
      error=true
      echo "- 未檢測到按下音量鍵，請再試一次！
  Volume key press not detected, 
  please try again!
  "
    fi
  done
}

# Keep old variable from previous versions of this
VKSEL=chooseport
