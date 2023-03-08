:~$ crontab -l
    no crontab for <your_username>

:~$ crontab -e
    no crontab for <your_username> - using an empty one

    Select an editor.  To change later, run 'select-editor'.
    1. /bin/nano        <---- easiest
    2. /usr/bin/code
    3. /bin/ed

    Choose 1-3 [1]: 1

## Add this cron schedule end the document
* * * * *  echo "Linux is Cool!" >> ~/cron.log   

:~$ sudo service cron start
:~$ tail -f ~/cron.log 
:~$ sudo service cron stop