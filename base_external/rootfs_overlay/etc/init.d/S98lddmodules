#! /bin/sh
#init script to load/unload modules for misc-modules and scull

case "$1" in
	start)
		echo "Loading misc-modules and scull"
		modprobe hello
		start-stop-daemon -S -n module_load -a /usr/bin/module_load -- faulty
		start-stop-daemon -S -n scull_load -a /usr/bin/scull_load 
		;;
	stop)
		echo "Unloading misc-modules and scull"
		rmmod hello 
		start-stop-daemon -S -n module_unload -a /usr/bin/module_unload -- faulty
		start-stop-daemon -S -n scull_unload -a /usr/bin/scull_unload
		;;
	*)
		echo "Usage: $0 {start|stop}"
	exit 1
esac

exit 0
