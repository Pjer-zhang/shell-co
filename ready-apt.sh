#/bin/bash
echo 'need passwd for
necessary install'

repo163='
#163\n
deb http://mirrors.163.com/ubuntu/ precise main restricted universe multiverse\n
deb http://mirrors.163.com/ubuntu/ precise-security main restricted universe multiverse\n
deb http://mirrors.163.com/ubuntu/ precise-updates main restricted universe multiverse\n
deb http://mirrors.163.com/ubuntu/ precise-proposed main restricted universe multiverse\n
deb http://mirrors.163.com/ubuntu/ precise-backports main restricted universe multiverse\n
deb-src http://mirrors.163.com/ubuntu/ precise main restricted universe multiverse\n
deb-src http://mirrors.163.com/ubuntu/ precise-security main restricted universe multiverse\n
deb-src http://mirrors.163.com/ubuntu/ precise-updates main restricted universe multiverse\n
deb-src http://mirrors.163.com/ubuntu/ precise-proposed main restricted universe multiverse\n
deb-src http://mirrors.163.com/ubuntu/precise-backports main restricted universe multiverse\n
\n'

reposohu='
#sohu\n
deb http://mirrors.sohu.com/ubuntu/ precise main restricted universe multiverse\n
deb http://mirrors.sohu.com/ubuntu/ precise-security main restricted universe multiverse\n
deb http://mirrors.sohu.com/ubuntu/ precise-updates main restricted universe multiverse\n
deb http://mirrors.sohu.com/ubuntu/ precise-proposed main restricted universe multiverse\n
deb http://mirrors.sohu.com/ubuntu/ precise-backports main restricted universe multiverse\n
deb-src http://mirrors.sohu.com/ubuntu/ precise main restricted universe multiverse\n
deb-src http://mirrors.sohu.com/ubuntu/ precisec-security main restricted universe multiverse\n
deb-src http://mirrors.sohu.com/ubuntu/ precise-updates main restricted universe multiverse\n
deb-src http://mirrors.sohu.com/ubuntu/ precise-proposed main restricted universe multiverse\n
deb-src http://mirrors.sohu.com/ubuntu/ precise-backports main restricted universe multiverse\n
\n'
 
repoustc='
#ustc\n
deb http://mirrors.ustc.edu.cn/ubuntu/ precise main restricted universe multiverse\n
deb http://mirrors.ustc.edu.cn/ubuntu/ precise-security main restricted universe multiverse\n
deb http://mirrors.ustc.edu.cn/ubuntu/ precise-updates main restricted universe multiverse\n
deb http://mirrors.ustc.edu.cn/ubuntu/ precise-proposed main restricted universe multiverse\n
deb http://mirrors.ustc.edu.cn/ubuntu/ precise-backports main restricted universe multiverse\n
deb-src http://mirrors.ustc.edu.cn/ubuntu/ precise main restricted universe multiverse\n
deb-src http://mirrors.ustc.edu.cn/ubuntu/ precise-security main restricted universe multiverse\n
deb-src http://mirrors.ustc.edu.cn/ubuntu/ precise-updates main restricted universe multiverse\n
deb-src http://mirrors.ustc.edu.cn/ubuntu/ precise-proposed main restricted universe multiverse\n
deb-src http://mirrors.ustc.edu.cn/ubuntu/ precise-backports main restricted universe multiverse\n
\n'


echo 'now working in'
pwd

src163=`cat /etc/apt/sources.list | grep "163.com"`
srcsohu=`cat /etc/apt/sources.list | grep "sohu.com"`
srcustc=`cat /etc/apt/sources.list | grep "ustc.com"`

    if [ ${#dir} -gt 8 ]
    then
        echo 'pass if test'
    else
        echo 'unpass if test'
    fi

touch tmp.list


if [ ${#src163} -lt 5 ]
then
	cp /etc/apt/sources.list tmp.list
    echo $repo163 >> tmp.list
	sudo cp tmp.list /etc/apt/sources.list
fi

if [ ${#srcsohu} -lt 5 ]
then
	cp /etc/apt/sources.list tmp.list
    echo $reposohu >> tmp.list
	sudo cp tmp.list /etc/apt/sources.list
fi

if [ ${#srcustc} -lt 5 ]
then
	cp /etc/apt/sources.list tmp.list
    echo $repoustc >> tmp.list
	sudo cp tmp.list /etc/apt/sources.list
fi

sudo apt-get install software-properties-common
sudo add-apt-repository ppa:george-edison55/cmake-3.x
sudo apt-get update
sudo apt-get upgrade    #update if necessary
sudo apt-get install cmake build-essential conky g+ gfortran zsh
#Bundle 'Lokaltog/powerline'

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#cp .bashrc ~/.bashrc
#cp .conkyrc ~/.conkyrc

#git clone https://github.com/powerline/fonts.git

#if cmake 3.x is needed
#curl -sSL https://cmake.org/files/v3.4/cmake-3.4.0-Linux-x86_64.tar.gz | sudo tar -xzC /opt

exit
