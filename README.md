# ubnt-mf-clean
Para o script funcionar você vai precisar do sshpass

# ubuntu
apt-get install sshpass 

# CentOS
yum --enablerepo=epel -y install sshpass

# Execução
chmod +x ubnt-mf-clean.sh
./ubnt-mf-clean.sh xxx.xxx.xxx 

# Observações
Como foi concebido com o intuito de ajudar pequenos provedores o script é rodado em lotes, ou seja só é necessario digitar as três primeiras casas do IP a ultima casa o script gera sozinho do ip 1 ao 254 percorrendo assim um /24 inteiro, no final ele exibe o resumo de quantos Ubiquiti's infectados ele encontrou e reparou.

# Funcionamento
O Script basicamente remove o MF retira de inicialização desabilita a porta HTTPS (443) e troca a gerencia da porta 80 para 81 pois a variante que estamos tratando somente se infecta pela porta 80.

# IMPORTANTE
Nao garanto que após o script ter feito a limpeza na sua rede que ela nao voltara a ser infectada em vista que existe outras variantes do MF e hoje ele só infecta pela porta 80 nada disso substitui a atualização para ultima versão de firmware e recomendamos fortemente que bloqueie por firewall qualquer tentativa de acesso as portas de serviço vindo de fora (internet), troque o usuario ubnt e use senhas fortes com letras maiusculas, minusculas, numeros e caracteres especiais.
