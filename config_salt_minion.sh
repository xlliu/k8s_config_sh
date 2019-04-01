sudo yum install -y https://repo.saltstack.com/yum/redhat/salt-repo-2019.2.el7.noarch.rpm
sudo yum install -y salt-minion
sed -i "s/#master: salt/master: 172.16.29.99/" /etc/salt/minion
systemctl restart salt-minion.service
systemctl enable salt-minion.service
