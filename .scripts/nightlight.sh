while true;
do
	if [ $(date '+%H') -gt "18" ] || [ $(date '+%H') -lt "6" ]; then
		redshift -O 1000
		feh --bg-fill ~/.backgrounds/blankwhite.png
	else
		redshift -x
		feh --bg-fill ~/.backgrounds/wallhaven-p9vjq9_1920x1080.png
	fi
	sleep 1
done
