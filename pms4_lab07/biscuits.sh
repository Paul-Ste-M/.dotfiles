#!/bin/bash



echo "How long should the biscuits bake at 350 degree Fahrenheit?"
read BAKETIME
if ["$BAKETIME" -gt 10]; then
	mv "./tray of raw biscuits" "./burnt biscuits"
	echo "You burnt your biscuits!"
elif ["$BAKETIME" -lt 9]; then
	mv "./tray of raw biscuits" "./still raw biscuits"
	echo "They are RAW! -GR"
else
	mv "./tray of raw biscuits" "./perfect biscuits"
	echo "Mmm! Golden brown biscuits! Yum!"
fi

	
