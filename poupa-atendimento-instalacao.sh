#!/bin/bash
sudo apt update && sudo apt upgrade

sleep 3

sudo apt-get install xrdp lxde-core lxde tigervnc-standalone-server -y

sleep 3

VERSION="$(java -version 2>&1 | grep version | cut -d'"' -f2)"
if [ "${VERSION}" ];
then
        echo "Cliente possui java instalado: ${VERSION}"
else
        echo "Cliente não possui java instalado"

fi
java -version
if [ $? -eq 0 ];
then
        echo "java instalado"

        echo "Você deseja que a aplicação seja executada via interface? (s/n)"
        read instone
        if [ \"$instone\" == \"s\" ];
        then
        echo "instalando projeto via interface..."
                 cd ..
                 cd ..
                 cd /home/ubuntu/Desktop && git clone https://github.com/victxrfreitas/DYOUNG.git
        echo "Iniciando aplicação..."
                 cd ..
                 cd ..
                 cd DYOUNG/Java swing login/dyoung-project/target/dyoung-project-1.0-SNAPSHOT-jar-with-dependencies.jar

        else
        echo "instalando projeto via terminal..."
                 cd ..
                 cd ..
                 cd git clone https://github.com/victxrfreitas/DYOUNG.git
        echo "Iniciando aplicação..."
                 cd ..
                 cd ..
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
                 cd ..
                 cd /home/ubuntu/Desktop && git clone https://github.com/victxrfreitas/DYOUNG.git
        echo "Iniciando aplicação..."
                 cd ..
                 cd ..
                 cd DYOUNG/Java swing login/dyoung-project/target/dyoung-project-1.0-SNAPSHOT-jar-with-dependencies.jar

        else
        echo "instalando projeto via terminal..."
                 cd ..
                 cd ..
                 cd /home/ubuntu/Desktop && git clone https://github.com/victxrfreitas/DYOUNG.git
        echo "Iniciando aplicação..."
                 cd ..
                 cd ..
                 cd DYOUNG/dyoung-project-cmd/target/dyoung-project-cmd-1.0-SNAPSHOT-jar-with-dependencies.jar
        fi

        fi
fi
