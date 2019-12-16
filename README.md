# .system_status

mkdir /root/.system_status/

cd /root/.system_status/

wget https://raw.githubusercontent.com/pedroaugustoferreira/.system_status/master/check.sh

chmod +x check.sh

crontab -e

Crontab

0 9 * * * /root/.system_status/check.sh &> /root/.system_status/check.log
 * * * * * /root/.system_status/check.sh &> /root/.system_status/check.log
