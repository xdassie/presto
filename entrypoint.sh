#!/bin/bash
NB_USER=presto
echo "$NB_USER:x:`id -u`:`id -g`:,,,:/home/$NB_USER:/bin/bash" >> /tmp/passwd
cat /tmp/passwd > /etc/passwd
rm /tmp/passwd
/usr/lib/presto/bin/run-presto
