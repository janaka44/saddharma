#!/bin/bashcd
echo 'Updating site...'

while true; do
    read -p "Do you wish to continue [y/n] ?" yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

current_date=$(date '+%Y-%m-%d') 
new_backup_path="/root/saddharma/web_backup/$current_date"
web_home="/root/saddharma/saddharma/src/saddharma_org/"

source /root/saddharma/venv/bin/activate
cd /root/saddharma/saddharma/src/saddharma_org/

if [ -z "$(git status --untracked-files=no --porcelain)" ]; then 

  if git pull origin master; then
    echo 'GIT PULL completed'
  else
    echo 'GIT PULL failed: exiting program.'
    exit
  fi

  echo "Backing up live codebase to $new_backup_path"
  mkdir "$new_backup_path"
  cp -r "$web_home" "$new_backup_path"

  pip install -r requirements.txt

  echo 'Upgrading DB to latest...'
  export DJANGO_SETTINGS_MODULE=saddharma_org.settings
  python3 manage.py migrate

  echo 'Restarting servers...'
  sudo systemctl daemon-reload
  sudo service gunicorn restart
  sudo service nginx restart
else
  echo 'There are modified files. Aborting update process..'
fi
echo 'Finished updating.'

