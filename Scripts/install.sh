echo -e "[[Visite o canal Smartphone Desktop]]"
echo -e "[[Iniciando instalação automática, aguarde...]]"
pkg install x11-repo -y
echo -e "[[Repositório x11-repo instalado]]"
echo -e "[[Baixando e instalando Script de inicialização do servidor x11]]"
wget https://raw.githubusercontent.com/Herick75/Box4Droid/main/Scripts/x11
chmod +x x11
mv x11 $PREFIX/bin
echo -e "[[Script instalado]]"
echo -e "[[Instalando pacotes adicionais]]"
pkg install xorg-server-xvfb pulseaudio xwayland -y
echo -e "[[Baixando e instalando o pacote do Termux-x11]]"
wget https://github.com/Herick75/Box4Droid/raw/main/Apps/termux-x11-1.02.07-0-all.deb
dpkg -i termux-x11-1.02.07-0-all.deb
echo -e "[[Instalação concluida, para iniciar o servidor x11,basta digitar "x11" no terminal!!]]"

echo -e "[[Quando for para de usar o servidor x11, é recomendado forçar a parada do Termux pelas configurações Você tambem pode usar o comando 'kill' + o pid do Termux-X11(para saber o pid,basta escrever termux-x11,e no final vai aparecer o id)]]"
