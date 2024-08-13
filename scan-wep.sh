#################################################################################
#
#
#  扫描周围的 WEP wifi
#
#
#
#################################################################################

# Mac系统下airport默认的路径
airport_path="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

# 先判断本地是否存在airport文件
if [ ! -e "$airport_path" ]; then
  echo "$airport_path文件不存在！"
  return
fi

# 死循环扫描
while true;
do
  wep_wifi_name=`$airport_path en0 -s | grep WEP`
  if [ $? -eq 0 ]; then
    echo "Find WEP wifi: ${wep_wifi_name}"
  else
    echo "find..."
  fi
  sleep 1
done




