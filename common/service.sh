#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}
DYNAMICSCRIPT="99_ExtSD_fix_v23"

# This script will be executed in late_start service mode
# More info in the main Magisk thread
chmod 755 "$MODDIR/$DYNAMICSCRIPT"
/system/bin/sh "$MODDIR/$DYNAMICSCRIPT" &
