to_email = "janaka44@gmail.com"
echo "------------------- sending test email to $to_email ---------------"
echo "This is the body of the email" | s-nail -s "This is the subject line" janaka44@gmail.com

echo '------------------------------- MAIL FOLDERS ----------------------------'
sudo ls -R ~/Maildir/

echo '------------------------------- MAIL LOG ----------------------------'
tail -n 100 /var/log/mail.log

echo '------------------------------- MAIL QUEUE ----------------------------'
mailq
