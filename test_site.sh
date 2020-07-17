#!/bin/bash

i=0
while ((i<10))
do
	i=$i+1
	time=$(date);
	site=$(echo 'http://192.168.56.3');
	curl --max-time 3 $site >> /dev/null
	res=$(echo $?)
	if [[ $res == 0 ]]
	then
		echo "$site --> $time :OK"
	else
		echo "$site --> $time :Erreur"
	fi
done

for ((i=1;i<=20;i++));
do
        time=$(date);
        site=$(echo  'https://github.com');
        curl --max-time 3 $site >> /dev/null
        res=$(echo $?)
        if [[ $res == 0 ]]
        then
                echo "$site --> $time :OK"
        else
                echo "$site --> $time :Erreur"
        fi
done

for ((i=1;i<=20;i++));
do
        time=$(date);
        site=$(echo  'https://www.blizzard.com/fr-fr/');
        curl --max-time 3 $site >> /dev/null
        res=$(echo $?)
        if [[ $res == 0 ]]
        then
                echo "$site --> $time :OK"
        else
                echo "$site --> $time :Erreur"
        fi
done

for ((i=1;i<=20;i++));
do
        time=$(date);
        site=$(echo  'https://openclassrooms.com/fr/');
        curl --max-time 3 $site >> /dev/null
        res=$(echo $?)
        if [[ $res == 0 ]]
        then
                echo "$site --> $time :OK"
        else
                echo "$site --> $time :Erreur"
        fi
done

for ((i=1;i<=20;i++));
do
        time=$(date);
        site=$(echo  'https://www.root-me.org/');
        curl --max-time 3 $site >> /dev/null
        res=$(echo $?)
        if [[ $res == 0 ]]
        then
                echo "$site --> $time :OK"
        else
                echo "$site --> $time :Erreur"
        fi
done
