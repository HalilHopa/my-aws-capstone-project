#! /bin/bash

apt update -y
apt upgrade -y
apt install python3 -y
apt install python3-pip -y
apt-get install python3.6-dev libmysqlclient-dev -y
pip3 install --upgrade setuptools
TOKEN="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"
cd /home/ubuntu/
git clone https://$TOKEN@github.com/HalilHopa/my-aws-capstone-project.git
cd /home/ubuntu/my-aws-capstone-project/
pip3 install -r requirements.txt
cd /home/ubuntu/my-aws-capstone-project/src
python3 manage.py makemigrations
python3 manage.py migrate
python3 manage.py collectstatic --noinput
python3 manage.py runserver 0.0.0.0:80