#!/bin/bash

#este script serve mais para estilização da ferramenta
#ele inicia tocando o audio
#somente depois que a brincadeira realmente começa quando  o sm_iniciar.bash é iniciado 


echo -e "\e[31m"



#carregando o scyther Maker(não está carregando nada)
echo "[*]iniciando Scyther Maker[*] |"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] /"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] -"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] \\"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] |"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] /"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] -"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] \\"
sleep "0.1"
clear

echo "[*]iniciando Scyther Maker[*] |"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] /"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] -"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] \\"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] |"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] /"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] -"
sleep "0.1"
clear
echo "[*]iniciando Scyther Maker[*] \\"
sleep "0.1"
clear

#asciis artes para deixar tudo mais foda
random=$(( (RANDOM % 3 ) + 1 ))

if [ "$random" -eq 1 ]; then
    echo "1"
    cat /home/Ceifador/Downloads/ascii-art.txt
elif [ "$random" -eq 2 ]; then
    echo "2"
    cat /home/Ceifador/Downloads/ascii-art2.txt
elif [ "$random" -eq 3 ]; then
    echo "3"
    cat /home/Ceifador/Downloads/ascii-art3.txt
else
    echo "teste"
fi

#toca o audio scyther Maker iniciado
aplay /home/Ceifador/Downloads/sm.wav -q
sudo bash sm_iniciar.bash

#carregando o sair(não está carregando nada, só o virus que você instalou semana passada)
echo -e "\e[31m"
clear
echo "[*]scyther Maker saindo.[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo..[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo...[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo.[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo..[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo...[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo.[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo..[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo...[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo.[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo..[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo...[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo.[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo..[*]"
sleep "0.3"
clear
echo "[*]scyther Maker saindo...[*]"
sleep "0.3"
#mensagem para o usuario
clear

#mais um pouco de bla bla bla 
echo "[isso nunca é um adeus, apenas um até logo]"
#toca o audio scyther maker finalizado
aplay  /home/Ceifador/sm_final.wav -q
clear
echo "Scyther Maker finalizado."
sleep "3"

clear
clear
#fim da putaria

