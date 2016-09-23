cd

mkdir os
cd os

wget http://www.stanford.edu/class/cs140/projects/pintos/pintos.tar.gz
tar -xzf pintos.tar.gz
rm pintos.tar.gz

git clone git://github.com/mit-pdos/xv6-public.git

git clone git://github.com/mbsoftwarewindows/jos.git

git clone https://gitlab.com/sortie/meaty-skeleton
mv meaty-skeleton template
