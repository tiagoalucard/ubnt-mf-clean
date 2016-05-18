#!/bin/bash
IP=$1;
contador=0;
if [ -z $1 ]; then
	echo "Digite o ip no formato xxx.xxx.xxx (192.168.X) virará um /24";
else
for i in `seq 1 254`; do
sshpass -p fucker ssh -o ConnectTimeout=1 -o StrictHostKeyChecking=no mother@$IP.$i "rm -f /etc/persistent/mf.tar; rm -R /etc/persistent/.mf; rm -R /etc/persistent/rc.poststart; cat /etc/passwd | grep -v mcuser | grep -v mother >> /etc/passwd2; cat /etc/passwd2 >> /etc/passwd; rm /etc/passwd2; cat /tmp/system.cfg | grep -v http >> /tmp/system2.cfg; echo "httpd.https.status=disabled" >> /tmp/system2.cfg; echo "httpd.port=81" >> /tmp/system2.cfg; echo "httpd.session.timeout=900" >> /tmp/system2.cfg; echo "httpd.status=enabled" >> /tmp/system2.cfg; cat /tmp/system2.cfg >> /tmp/system.cfg; rm /tmp/system2.cfg; cfgmtd -w -p /etc/; cfgmtd -f /tmp/system.cfg -w; killall -9 search; killall -9 mother; killall -9 sleep; reboot;" &>>/dev/null &
PID[i]=$!;
while [ -d /proc/${PID[i]} ]; do
 wait ${PID[i]};
 status=$?;
if [ $status == 0 ]; then
        echo -e "$IP.$i \e[31m Desinfectado\e[m";
	let contador=$contador+1;
	echo $status;
else
        echo -e "$IP.$i \e[34m Não Infectado\e[m";
	echo $status;
fi;
done;
done;
echo -e "Foram Desinfectados \e[31m$contador\e[m equipamentos.";
fi;
