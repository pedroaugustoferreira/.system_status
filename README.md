# .system_status

mkdir /root/.system_status/

cd /root/.system_status/

wget https://github.com/pedroaugustoferreira/.system_status/blob/master/check.sh

chmod +x check.sh

Crontab

0 9 * * * /root/.system_status/check.sh &> /root/.system_status/check.log
