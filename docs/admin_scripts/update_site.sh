#!/bin/bash
echo 'Updating site...'

while true; do
    read -p "Do you wish to continue [y/n] ?" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

currentDate=$(date '+%Y-%m-%d')
newBackupPath="/home/django/backup/legaloffice_$currentDate"

cd /home/django/legaloffice/
source venv/bin/activate

if [ -z "$(git status --untracked-files=no --porcelain)" ]; then 

  if git pull origin master; then
    echo 'GIT PULL completed'
  else
    echo 'GIT PULL failed: exiting program.'
    exit
  fi

  echo "Backing up live codebase to $newBackupPath"
  mkdir "$newBackupPath"
  cp -r /home/django/legaloffice "$newBackupPath"

  pip install -r requirements.txt

  echo 'Upgrading DB to latest...'
  export DJANGO_SETTINGS_MODULE=legaloffice.settings.prod
  python3 manage.py migrate

  echo 'Restarting servers...'
  sudo systemctl daemon-reload
  sudo service gunicorn restart
  sudo service nginx restart
else
  echo 'There are modified files. Aborting update process..'
fi
echo 'Finished updating.'

