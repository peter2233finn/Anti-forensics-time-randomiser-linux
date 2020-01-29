#seconds wait is the wait time between each time change
secondsWait=3

function randomiseClock {
sec=$(((($RANDOM%59))+1))
min=$(((($RANDOM%59))+1))
hour=$(((($RANDOM%23))+1))
day=$(((($RANDOM%28))+1))
month=$(((($RANDOM%12))+1))
year=$(((($RANDOM%2038))+1))

while (( $year<1970 ))
do
	year=$(($RANDOM%2039))
done

sudo hwclock --set --date "$month/$day/$year $hour:$min:$sec"
sudo hwclock -s
}
echo test
while true
do
	randomiseClock
	sleep $secondsWait
	sudo hwclock --show --verbose | grep "Hw clock time"
done
