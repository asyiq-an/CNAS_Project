## Setup

How to use the dockerfile
### Start
docker-compose up -d --build

### Reset
docker-compose down  # Stop and remove the containers
docker-compose up -d --build  # Rebuild and start the containers with the new restart policy

### Debug by reinstall Docker Compose
sudo rm /usr/bin/docker-compose
user@user-VMware-Virtual-Platform:~$ sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 12.1M  100 12.1M    0     0  6037k      0  0:00:02  0:00:02 --:--:-- 18.1M
user@user-VMware-Virtual-Platform:~$ docker-compose --version
bash: /usr/bin/docker-compose: No such file or directory
user@user-VMware-Virtual-Platform:~$ docker-compose --version
bash: /usr/bin/docker-compose: No such file or directory
user@user-VMware-Virtual-Platform:~$ sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
user@user-VMware-Virtual-Platform:~$ docker-compose --version
docker-compose version 1.29.2, build 5becea4c
### Notice
This file will autorestart on failure or reboot due to restart:always