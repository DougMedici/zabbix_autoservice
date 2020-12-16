#!bash 

#Update do S.O
sudo apt-get update -y
sudo apt-get upgrade -y
sleep 3


#Instalação do DB Mysql
echo "Instalando Banco de Dados"
sleep 3
sudo apt-get install mysql-server mysql-client -y

#Download do Pacote
echo "Downlaod do Zabbix Server"
sudo mkdir /downloads
cd /downloads
sudo wget https://cdn.zabbix.com/zabbix/sources/stable/5.0/zabbix-5.0.0.tar.gz
ls -la /downloads

#Decompactando
echo "Descompactando pacote..."
tar -zxvf zabbix-5.0.0.tar.gz
cd zabbix-5.0.0/database/mysql/

#Instalação do LAMP
echo "Instalação do Servidor WEB"
sudo apt-get install apache2 php libapache2-mod-php php-cli php-mysql php-mbstring php-gd php-xml php-bcmath php-ldap mlocate
