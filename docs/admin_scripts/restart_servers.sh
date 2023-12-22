  echo 'Restarting servers...'
  sudo systemctl daemon-reload
  sudo service gunicorn restart
  sudo service nginx restart
