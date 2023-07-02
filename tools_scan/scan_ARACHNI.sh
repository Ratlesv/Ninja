#!/bin/bash


echo "\033[33;1mDIGITE O DOMÍNIO PARA CONTINUAR!!\033[m";
read -p "Domínio: " dominio;

cd ../;
pasta=$(pwd);

if [ -e $pasta"/scanner/"$dominio"/resultados/subsResolvidos.txt" ];then
    test;
else
    zenity --error --text="REALIZE O RECONHECIMENTO PRIMEIRAMENTE!!";
    exit;
fi

data=$(date +"%H:%M:%S");
echo -e "\033[1;34;40m"$data"\033[m \033[05;33m<SCAN ARACHINI />>\033[m\n";
diretorio=$(pwd);
echo "cd "$diretorio"/arachni-1.6.1.3-0.6.1.1/bin/;./arachni_web";

read -p "Digite o nome de seu usuário Normal [não pode ser usuário root]: " user;

su $user;

bash;



