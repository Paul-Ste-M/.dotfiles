#!/bin/bash
whoami
date
uptime
if [ -e textfile.txt ]; then
	echo "File exist!"
else
	echo "File not found"
fi
touch info.txt
if [ -e info.txt ]; then
	echo "File exist!"
else
	echo "File not found"
fi
rm -r info.txt

