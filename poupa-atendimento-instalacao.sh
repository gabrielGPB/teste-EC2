#!/bin/bash

cd ..

sudo apt update && sudo apt upgrade

sleep 3

sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y

sleep 3

sudo apt-get install docker.io -y
sudo systemctl start docker 
sudo systemctl enable docker
sudo docker pull mysql:5.7
sudo docker images
cd /home/ubuntu/teste-EC2
sudo docker build -t dockerfile .
sudo docker run -d -p 3306:3306 --name DyoungDB -e MYSQL_ROOT_PASSWORD=Gfgrupo6 -e MYSQL_DATABASE=dyoung mysql:5.7
sudo docker start DyoungDB
sudo docker exec -it DyoungDB bash
mysql -u root -p
sleep 4
clear


VERSION="$(java -version 2>&1 | grep version | cut -d'"' -f2)"
if [ "${VERSION}" ];
then
        echo "Cliente possui java instalado: ${VERSION}"
else
        echo "Cliente não possui java instalado"

fi
java --version
if [ $? -eq 0 ];
then
        echo "java instalado"

        echo "Você deseja que a aplicação seja executada via interface? (s/n)"
        read instone
        if [ \"$instone\" == \"s\" ];
        then
        echo "instalando projeto via interface..."
                 cd ..
                 cd /home/ubuntu/Desktop && git clone https://github.com/victxrfreitas/dyoung-ppa.git
        echo "Iniciando aplicação..."
                 cd ..
                 cd DYOUNG/Java swing login/dyoung-project/target/dyoung-project-1.0-SNAPSHOT-jar-with-dependencies.jar

        else
        echo "instalando projeto via terminal..."
                 
                 git clone https://github.com/victxrfreitas/dyoung-ppa.git
        echo "Iniciando aplicação..."
                 cd DYOUNG/dyoung-project-cmd/target/dyoung-project-cmd-1.0-SNAPSHOT-jar-with-dependencies.jar
        fi

else
        echo "java nao instalado"
        echo "gostaria de instalar o java? (s/n)"
        read inst
        if [ \"$inst\" == \"s\" ];
        then
                echo "instalando java"
                sudo apt install default-jre -y

                echo "Você deseja que a aplicação seja executada via interface? (s/n)"
        read instone
        if [ \"$instone\" == \"s\" ];
        then
        echo "instalando projeto via interface..."
                 cd ..
                 cd /home/ubuntu/Desktop && https://github.com/victxrfreitas/dyoung-ppa.git
        echo "Iniciando aplicação..."

                 cd ..
                 cd DYOUNG/Java swing login/dyoung-project/target/dyoung-project-1.0-SNAPSHOT-jar-with-dependencies.jar

        else
        echo "instalando projeto via terminal..."
                
                git clone https://github.com/victxrfreitas/dyoung-ppa.git
        echo "Iniciando aplicação..."

                 cd DYOUNG/dyoung-project-cmd/target/dyoung-project-cmd-1.0-SNAPSHOT-jar-with-dependencies.jar
        fi

        fi
fi
