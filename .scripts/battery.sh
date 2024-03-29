BAT=/sys/class/power_supply/BAT0/capacity

if ![ -f $BAT ]; then
	exit
fi

if [ $(cat /sys/class/power_supply/BAT0/uevent | head -n 3 | tail -n 1 | awk -F = '{print $2}') = "Charging"
 ]; then
	echo "$(cat $BAT)% battery charging"
else
	echo "$(cat $BAT)% battery"
	done
fi
