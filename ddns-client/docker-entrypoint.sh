#!/bin/bash

if [ -z "$USER" ]
then
	echo "No user was set. Use -u=username"
	exit 10
fi

if [ -z "$PASSWORD" ]
then
	echo "No password was set. Use -p=password"
	exit 20
fi

if [ -z "$TEMPLATE" ]
then
	echo "No template. Use -h=https://api.dynu.com/nic/update? \
	hostname=__HOSTNAME__&myip=__MYIP__&username=__USERNAME__&password=__PASSWORD__"
	exit 30
fi

echo "$USER $PASSWORD $TEMPLATE"

#
#if [ -n "$DETECTIP" ]
#then
#	IP=$(wget -qO- "ifconfig.me")
#fi
#
#
#if [ -n "$DETECTIP" ] && [ -z $IP ]
#then
#	RESULT="Could not detect external IP."
#fi
#
#
#if [[ $INTERVAL != [0-9]* ]]
#then
#	echo "Interval is not an integer."
#	exit 35
#fi
#
#
#SERVICEURL="dynupdate.no-ip.com/nic/update"
#
#case "$SERVICE" in
#        noip)
#            SERVICEURL="dynupdate.no-ip.com/nic/update"
#            ;;
#
#        dyndns)
#            SERVICEURL="members.dyndns.org/v3/update"
#            ;;
#
#        duckdns)
#            SERVICEURL="www.duckdns.org/v3/update"
#            ;;
#        *)
#			SERVICEURL="dynupdate.no-ip.com/nic/update"
#
#esac
#
#USERAGENT="--user-agent=\"no-ip shell script/1.0 mail@mail.com\""
#BASE64AUTH=$(echo '"$USER:$PASSWORD"' | base64)
#AUTHHEADER="--header=\"Authorization: $BASE64AUTH\""
#
#NOIPURL="https://$USER:$PASSWORD@www.duckdns.org/v3/update"
#
#
#if [ -n "$IP" ] || [ -n "$HOSTNAME" ]
#then
#	NOIPURL="$NOIPURL?"
#fi
#
#if [ -n "$HOSTNAME" ]
#then
#	NOIPURL="${NOIPURL}hostname=${HOSTNAME}"
#fi
#
#if [ -n "$IP" ]
#then
#	if [ -n "$HOSTNAME" ]
#	then
#		NOIPURL="$NOIPURL&"
#	fi
#	NOIPURL="${NOIPURL}myip=$IP"
#fi
#
#
#echo "$AUTHHEADER $USERAGENT $NOIPURL"
#
#while :
#do
#
#	RESULT=$(wget --no-check-certificate -qO- $AUTHHEADER $USERAGENT $NOIPURL)
#
#
#	echo $RESULT
#
#
#	if [ $INTERVAL -eq 0 ]
#	then
#		break
#	else
#		sleep "${INTERVAL}m"
#	fi
#
#done
#
#exit 0