MODPATH=${0%/*}
# pm uninstall-system-updates com.android.camera
rm -rf /data/system/package_cache/*
tmp_list="
MiuiCamera
"
dda=/data/dalvik-cache/arm
[ -d $dda"64" ] && dda=$dda"64"
for i in $tmp_list; do
	rm -f $dda/system@*@"$i"*
done

# Don't modify anything after this
if [ -f $INFO ]; then
  while read LINE; do
    if [ "$(echo -n $LINE | tail -c 1)" == "~" ]; then
      continue
    elif [ -f "$LINE~" ]; then
      mv -f $LINE~ $LINE
    else
      rm -f $LINE
      while true; do
        LINE=$(dirname $LINE)
        [ "$(ls -A $LINE 2>/dev/null)" ] && break 1 || rm -rf $LINE
      done
    fi
  done < $INFO
  rm -f $INFO
fi
