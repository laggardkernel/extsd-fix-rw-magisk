#!/system/bin/sh

# MODDIR=${0%/*}
MODID=extsd-fix-rw
LOGFILE=/cache/magisk.log

fpath_ori="/data/system/packages.xml"
fpath_bak="${fpath_ori}-RW.bak"
fpath_tmp="${fpath_ori}-RW.tmp"

log_print() {
  echo "$MODID: $1"
  echo "$MODID: $1" >> $LOGFILE
  log -p i -t "$MODID" "$1"
}

set_perm() {
  chown $2:$3 $1 || exit 1
  chmod $4 $1 || exit 1
  if [ ! -z "$5" ]; then
    chcon $5 $1 2>/dev/null
  else
    chcon 'u:object_r:system_file:s0' $1 2>/dev/null
  fi
}

# This script is put in /magisk/.core/post-fs-data, and
# runs before magisk modules are prepated.

if [ -f "/magisk/$MODID/disable" ]; then
  log_print "module is DISABLED"
  log_print "restoring backup ${fpath_bak}"
  if [ -f "${fpath_bak}" ]; then
    cp -af "${fpath_bak}" "${fpath_ori}"
    # set_perm  "${fpath_ori}"  1000  1000  0644  0644
  else
    log_print "Warning! No backup is found for ${fpath_ori}"
  fi
elif [ ! -d "/magisk/$MODID" ]; then
  log_print "module is REMOVED"
  log_print "restoring backup ${fpath_bak}"
  if [ -f "${fpath_bak}" ]; then
    cp -af "${fpath_bak}" "${fpath_ori}" && \
    # set_perm  "${fpath_ori}"  1000  1000  0644  0644 && \
    rm "${fpath_bak}"
  else
    log_print "Warning! No backup is found for ${fpath_ori}"
  fi
  log_print "script self-deleting"
  rm ${0}
fi


