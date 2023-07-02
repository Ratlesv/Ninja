#!/bin/bash
cd ../;
caminho=$(pwd)
resolv="subsResolvidos.txt";

if [ -e $caminho"/scanner/"$1"/resultados/"$resolv ];then


	if [ -e $caminho"/scanner/"$1"/resultados/imagens" ];then
		terminator -e " echo '\033[33;1mSCAN NESTE DOMÍNIO JÁ REALIZADO!!\033[m';bash";
		exit;
	else
		#Passar GOWITNESS

		caminho=$(pwd);
		resolv="subsResolvidos.txt";

		echo -e "Os resultados de gowitness serão salvos em: "$caminho"/scanner/"$1"/resultados/imagens/\n";

		cd $caminho"/scanner/"$1"/resultados/";
    	gowitness file -f $caminho"/scanner/"$1"/resultados/"subsResolvidos.txt --threads 2;
    	#crie uma pasta chamada imagens no diretório resultados
    	mkdir imagens;
    	#entre no diretório screenshots, mova todas as imagens png para o diretório anterior chamado imagens.
    	cd screenshots;
    	mv *.png ../imagens;
    	#volte para o diretório resultados e remova o diretório screenshots
    	cd ../;
    	rm -rf screenshots;
    	#volte para o diretório de onde está o executável deste script bash
    	cd ../;
	fi

else
    terminator -e " echo '\033[33;1mREALIZE O RECONHECIMENTO PRIMEIRO!!\033[m';bash";
fi
