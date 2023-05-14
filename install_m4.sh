### install dir
INSDIR=${HOME}/library

wget ftp://ftp.gnu.org/gnu/m4/m4-1.4.12.tar.gz

tar -xvzf m4-1.4.12.tar.gz

cd m4-1.4.10

./configure --prefix=${INSDIR}

make && make install
