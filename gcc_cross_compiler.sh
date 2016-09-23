echo "Building Cross Compiler"

cd
mkdir src
cd src

wget http://mirrors.ocf.berkeley.edu/gnu/binutils/binutils-2.27.tar.gz
tar -xzf binutils-2.27.tar.gz
mkdir binutils-build
cd binutils-build
../binutils-2.27/configure --prefix=$HOME/opt/cross/ --target=i686-elf --disable-werror
make -j4
make install -j4
cd ..

wget http://mirrors.ocf.berkeley.edu/gnu/gcc/gcc-5.4.0/gcc-5.4.0.tar.gz
tar -xzf gcc-5.4.0.tar.gz
mkdir build-gcc
cd build-gcc
../gcc-5.4.0/configure --prefix=$HOME/opt/cross/ --target=i686-elf --disable-werror \
    --disable-libssp --disable-libmudflap --with-newlib \
    --without-headers --enable-languages=c,c++
make all-gcc -j4
make all-target-libgcc -j4
make install-gcc -j4
make install-target-libgcc -j4
cd ..

cd

echo "export PATH=\$PATH:\$HOME/opt/cross/bin/" >> $HOME/.bashrc

echo ""
echo "Done Installation."
echo "Make sure to close and reopen this terminal and any other terminals"
echo "to ensure that the PATH is set correctly and all programs are accessible"
echo ""
echo ""
