#!/system/bin/sh
# for MT6573 ota update.

mkdir /cache/recovery 

command_file=/cache/recovery/command

case "$#" in
	"0")
	echo "usage: $ sh /cache/recovery/ota.sh filename"
	exit 0
	;;
esac

ls /sdcard/walking/$1 > /dev/null
case "$?" in
	"0")
	;;
	*)
	echo "$1 not exist"
	exit 0
esac

echo --update_package=/sdcard/walking/$1 >$command_file

sync

echo "flush command file" > /dev/null


reboot recovery
