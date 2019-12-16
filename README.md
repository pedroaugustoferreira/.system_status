# .system_status

mkdir /root/.system_status/


Crontab

0 9 * * * /root/.system_status/check.sh &> /root/.system_status/check.log
