yum install httpd - y
if [ -a /usr/sbin/httpd ]; then'
echo "Apache is already installed"
else
sudo yum install httpd -y
fi
sudo rm -rf /var/www/html/*
touch /var/www/html/index.html
echo - e "<html> \n <header><title>This is title</title></header> \n <body> \n Hello World Our First Pipeline Project \n </body> \n </html>" >> /var/www/html/index.html
service httpd restart
