#!/bin/bash

#installation de fail2ban


date
echo


echo  "step 1: update apt cache"
echo  "########################"

apt-get update

 if  [ $? = 0 ]
 then
   echo "OK"
 else
   echo "Erreur"
fi
echo

echo  "step 2: upgrade packages"
echo  "########################"

apt-get upgrade

 if  [ $? = 0 ]
 then
   echo "OK"
 else
   echo "Erreur"
fi
echo


echo  "step 3: installation fail2ban"
echo  "#############################"

apt-get install fail2ban -y
 if  [ $? = 0 ]
 then
   echo "OK"
 else
   echo "Erreur"
fi
echo

echo  "step 4: démarrage fail2ban"
echo  "##########################"

systemctl start fail2ban
 if  [ $? = 0 ]
 then
   echo "OK"
 else
   echo "Erreur"
fi
echo
echo  "step 5: config: démarrage auto fail2ban"
echo  "#######################################"

systemctl enable fail2ban
 if  [ $? = 0 ]
 then
   echo "OK"
 else
   echo "Erreur"
fi
echo

#configuration de fail2ban

echo "step 6: config: installation jail sshd"
echo "######################################"

echo  "[ssh]" > /etc/fail2ban/jail.d/custom.conf
echo  " " > /etc/fail2ban/jail.d/custom.conf
echo  "enabled = true" > /etc/fail2ban/jail.d/custom.conf
echo  "port = 22" > /etc/fail2ban/jail.d/custom.conf
echo  "logpath = /var/log/auth.log" > /etc/fail2ban/jail.d/custom.conf
echo  "maxretry = 5" > /etc/fail2ban/jail.d/custom.conf

echo  "OK"
echo

echo  "step 7: config: redemarrage fail2ban"
echo  "####################################"

systemctl restart fail2ban
 if  [ $? = 0 ]
 then
   echo "OK"
 else
   echo "Erreur"
fi
echo
