echo "Yum update Start"
sudo yum -y update
sudo reboot
echo "Yum update Complete"

echo "Lamp Install Start"
sudo yum -y install httpd httpd-devel
sudo yum -y install php php-mysql php-xml php-pear php-pdo php-cli php-mbstring php-gd php-mcrypt php-common php-devel php-bcmath
sudo yum -y install mysql mysql-devel mysql-server
echo "Lamp Install Complete"

echo "Httpd start Start"
sudo /etc/init.d/httpd start
sudo chkconfig httpd on
echo "Httpd start Complete"
echo "Mysqld start Start"
sudo /etc/init.d/mysqld start
sudo chkconfig mysqld on
echo "Mysqld start Complete"
