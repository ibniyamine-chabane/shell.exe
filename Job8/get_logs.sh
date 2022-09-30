#!/bin/bash

Date=$(date +"%d-%m-%Y-%H:%M")

last nejimaru | wc -l > number_connection-$Date

mkdir Backup

tar -cvf /home/nejimaru/shell.exe/Job8/number_connection-$Date.tar number_connection-$Date 

mv /home/nejimaru/shell.exe/Job8/number_connection-$Date.tar /home/nejimaru/shell.exe/Job8/Backup/
#si je fait le cron , ça marche mais il il me met mon fichier number_connection-$Date dans le home,
#j'ai donc fait une condition pour remedier j'ai créer une condition pour déplacer mon fichier vers
#mon dossier Job
if [ /home/nejimaru/number_connection-$Date ]
then 
 mv /home/nejimaru/number_connection-$Date /home/nejimaru/shell.exe/Job8/
fi

