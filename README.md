# Change_Wallpaper_in_Gnome
Bash Script to change the background in Gnome. It can be used using a cronjob to change the walpaper periodically.

-------------------------------------------------------------------------------------------------------------------
To Execute every minute using cronjob:

Execute:

crontab -e

type in:

* * * * * /path/to/bash /path/to/script.sh

To exit the file and finish editing:

Ctrl+ x


in my case the script is called changeWallpaper.sh and it is in /home, so the command would be:

* * * * * /bin/bash /home/changeWallpaper.sh



