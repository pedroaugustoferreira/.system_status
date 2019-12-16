#!/bin/bash -l
cd /root/.system_status/

rm -rf  *$(date "+%m%d")*
gzip -f *.out &> /dev/null

system_check()
{
        netstat -nlpt &> netstat.$(date "+%m%d").out
        df -hT        &> df.$(date "+%m%d").out
        ifconfig      &> ifconfig.$(date "+%m%d").out
        uname -a      &> uname.$(date "+%m%d").out
        uptime        &> uptime.$(date "+%m%d").out
        mount         &> mount.$(date "+%m%d").out
        fdisk -l      &> fdisk.$(date "+%m%d").out
        ps aux        &> ps.$(date "+%m%d").out
        dmesg -c      &> dmesg.$(date "+%m%d").out 
        systemctl     &> systemctl.$(date "+%m%d").out
        free -m       &> free_m.$(date "+%m%d").out
}

system_check
