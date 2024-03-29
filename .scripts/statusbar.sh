while true; do
	BAROUTPUT=""
	CURRENTTIME=$(date '+%r')
	BAROUTPUT+=$CURRENTTIME
	BAROUTPUT+=" "
	BATTERY=$(~/suckless/.scripts/battery.sh)
	BAROUTPUT+=$BATTERY
	BAROUTPUT+=" "
	CURRENTDATE=$(date '+%b %d')
	BAROUTPUT+=${CURRENTDATE}
	xsetroot -name "$BAROUTPUT"
	sleep 1
done


