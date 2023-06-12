#!/bin/bash 

#Get current using Wi-Fi information 
WLAN_ID=$(ifconfig | grep wl* | sed 's/:.*$//g')
WLAN_IP=$(ifconfig $WLAN_ID | grep 'inet 192.168\.' | sed 's/^.*inet //g' | sed 's/  netmask.*$//g')
if [ "$WLAN_IP" = "" ]; then 
echo -e "\E[1;31;47mNo Local Wi-Fi Network Connected\E[0m" 
export ROS_MASTER_URI=http://localhost:11311 
echo -e "ROS_MASTER_URI: \E[1;36m$ROS_MASTER_URI\E[0m"	 
else 
echo -e "Wi-Fi IP Address: \E[1;36m$WLAN_IP\E[0m" 
WLAN_SSID=`iwgetid -r` 
echo -e "Wi-Fi AP SSID: \E[1;36m$WLAN_SSID\E[0m" 
 
#Print ROS IP Setting 
export ROS_HOSTNAME=${WLAN_IP} 
export ROS_IP=${WLAN_IP} 
 
if [ "$ROS_REMOTE_IP" = "" ]; then 
export ROS_MASTER_URI=http://localhost:11311	 
else 
export ROS_MASTER_URI=http://${ROS_REMOTE_IP}:11311 
fi 
 
#echo "ROS_HOSTNAME: $ROS_HOSTNAME"  
echo -e "ROS_IP: \E[1;36m$ROS_IP\E[0m" 
echo -e "ROS_MASTER_URI: \E[1;36m$ROS_MASTER_URI\E[0m" 
fi 
 
#Print all ROS Environment Variable 
#env | grep ROS 
