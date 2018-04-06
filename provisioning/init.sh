echo "************** Yum update Start **************"
sudo apt update
echo "************** Yum update Complete **************"

echo "************** Lamp Install Start **************"
sudo apt -y install apache2
sudo apt -y install mysql-server
sudo apt -y install php libapache2-mod-php php-mysql php-mbstring php-mcrypt php-curl php-gd php-xml
echo "************** Lamp Install Complete **************"

sudo rm -fr /var/lib/mysql
sudo mkdir /var/lib/mysql
sudo chown mysql:mysql /var/lib/mysql
sudo /usr/sbin/mysqld --initialize-insecure --user=mysql --datadir=/var/lib/mysql
sudo /etc/init.d/mysql restart
