systemctl status nginx
#sudo nginx -t
#sudo systemctl restart nginx
 
sudo systemctl status gunicorn.service
#sudo systemctl status gunicorn
#sudo journalctl -u gunicorn -n 100
#sudo systemctl daemon-reload
#sudo service gunicorn restart
#sudo systemctl restart gunicorn.socket gunicorn.service
