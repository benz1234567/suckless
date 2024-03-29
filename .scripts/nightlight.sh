while true;
do
	if [ $(date '+%H') -gt "18" ] || [ $(date '+%H') -lt "6" ]; then
		redshift -O 1000
	else
		redshift -x
	fi
	sleep 1
done
