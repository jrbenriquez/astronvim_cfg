ORIGINAL_DIR=$(pwd)
cd /tmp
git clone https://github.com/universal-ctags/ctags.git
cd ctags
./autogen.sh
./configure --prefix=/where/you/want # defaults to /usr/local
make
make install # may require extra privileges depending on where to install
cp ctags /usr/local/bin/
cd $ORIGINAL_DIR
