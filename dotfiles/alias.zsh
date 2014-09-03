# ----------------------------------------------------------------------------
# Development
# ----------------------------------------------------------------------------

mkd() {
  local dir=$1
  mkdir -p $dir && cd $dir
}

npminstglob() {
  local modules=$@
  npm install -g $modules
}

# ----------------------------------------------------------------------------
# Git
# ----------------------------------------------------------------------------

# Git commit and add files
gac() {
  local message=$1
  git add . -A
  git commit -m "$message"
}

function remac() {
  local progress='.oO°Oo'
  local airport=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport
  local ssid=$($airport -I|awk '/^ *SSID/ {print $2}')
  local iface=$(networksetup -listallhardwareports|grep -A1 Wi-Fi|awk '/Device:/ {print $2}')
  local mac=00$(openssl rand -hex 5|sed 's/\(..\)/:\1/g')

  echo Disconnecting Wi-Fi $iface from SSID $ssid to set new mac address $mac...
  sudo $airport -z
  local i n=0
  until ifconfig $iface ether | grep -q $mac ; do
  sudo ifconfig $iface ether $mac
  sleep .1
  i=$[++n % $#progress + 1]
  echo -n "$progress[$i]\r"
  done

  networksetup -setairportnetwork $iface $ssid \
  && echo mac is $mac \
  || echo failed $mac && false
}
