# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Change system varibles
PS1="[\u@\h \W]\$"

########################################
######## User specific functions #######
########################################

# Language
export LANG="zh_CN.UTF-8"
# tools directory
MYTOOLS="$HOME/tools"
UNIVERSE_PATH="$HOME/universe"
JAVA_HOME="$HOME/tools/jdk1.7.0_40"
export classpath=".:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar"
# Path
#:$MYTOOLS/pkg-config/bin\
PATH="\
:$MYTOOLS/mysql/bin\
:$MYTOOLS/ncurse/bin\
:$MYTOOLS/thrift/bin\
:$MYTOOLS/openssl/bin\
:$MYTOOLS/cmake/bin\
:$MYTOOLS/glib/bin\
:$MYTOOLS/libtool/bin\
:$MYTOOLS/bison/bin\
:$MYTOOLS/automake15/bin\
:$MYTOOLS/autoconf/bin\
:$JAVA_HOME/bin\
:$UNIVERSE_PATH/tool/cppman/bin\
:$MYTOOLS/python2.x/bin\
:$PATH\
:$MYTOOLS/git/bin\
:$MYTOOLS/script_tools\
:$MYTOOLS/png/bin\
:$MYTOOLS/xpdf/bin\
:$MYTOOLS/redis/bin\
"
export PATH
# c headers directory
C_INCLUDE_PATH="\
$MYTOOLS/ncurse/include:\
$MYTOOLS/libevent/include:\
$MYTOOLS/thrift/include:\
$MYTOOLS/openssl/include:\
$MYTOOLS/boost/include:\
$C_INCLUDE_PATH:\
$MYTOOLS/glib/include:\
$MYTOOLS/glib/include/glib-2.0:\
$MYTOOLS/glib/include/glib-2.0/glib:\
$MYTOOLS/glib/include/glib-2.0/gio:\
$MYTOOLS/glib/include/glib-2.0/gobject:\
$MYTOOLS/glib/include/gio-unix-2.0:\
$MYTOOLS/glib/include/gio-unix-2.0/gio:\
$MYTOOLS/glib/lib/glib-2.0/include:\
$MYTOOLS/libffi/lib/libffi-3.2.1/include:\
/home/test/tools/ncurses5.9/include:\
/home/test/tools/readline/include:\
/home/test/tools/png/include"
export C_INCLUDE_PATH
# cpp headers directory
CPLUS_INCLUDE_PATH="\
$MYTOOLS/ncurse/include:\
$MYTOOLS/libevent/include:\
$MYTOOLS/thrift/include:\
$MYTOOLS/openssl/include:\
$MYTOOLS/boost/include:\
$CPLUS_INCLUDE_PATH:\
$MYTOOLS/glib/include:\
$MYTOOLS/glib/lib/glib-2.0/include:\
$MYTOOLS/glib/include/glib-2.0:\
$MYTOOLS/glib/include/gio-unix-2.0:\
$MYTOOLS/libffi/lib/libffi-3.2.1/include:\
/home/test/tools/ncurses5.9/include:\
/home/test/tools/readline/include:\
/home/test/tools/png/include"
export CPLUS_INCLUDE_PATH
# static library direcotry
LIBRARY_PATH="\
$MYTOOLS/ncurse/lib:\
$MYTOOLS/libevent/lib:\
$MYTOOLS/thrift/lib:\
$MYTOOLS/boost/lib:\
$LIBRARY_PATH:\
$MYTOOLS/openssl/lib:\
$MYTOOLS/glib/lib:\
$MYTOOLS/libffi/lib64:\
/home/test/tools/readline/lib:\
/home/test/tools/ncurses5.9/lib:\
/home/test/tools/png/lib:\
/home/test/tools/libcurl/lib"
export LIBRARY_PATH
# shared library directory
LD_LIBRARY_PATH="\
$MYTOOLS/ncurse/lib:\
$MYTOOLS/libevent/lib:\
$MYTOOLS/thrift/lib:\
:$MYTOOLS/boost/lib:\
:$LD_LIBRARY_PATH\
:$MYTOOLS/glib/lib\
:$MYTOOLS/openssl/lib\
:$MYTOOLS/readline/lib\
$MYTOOLS/libffi/lib64:\
/home/test/tools/readline/lib:\
/home/test/tools/ncurses5.9/lib:\
/home/test/tools/png/lib:\
/home/test/tools/libcurl/lib"
export LD_LIBRARY_PATH
export LIBFFI_CFLAGS="-I$MYTOOLS/libffi/lib/libffi-3.2.1/include"
export LIBFFI_LIBS="-L$MYTOOLS/libffi/lib64 -lffi"
export GLIB_CFLAGS="-I$MYTOOLS/glib/include"
export GLIB_LIBS="-L$MYTOOLS/glib/lib -lglib-2.0"
export PKG_CONFIG="$MYTOOLS/automake15/bin/pkg-config"
export PKG_CONFIG_PATH="\
/usr/share/pkgconfig:\
$MYTOOLS/pkg-config/share/pkgconfig:\
$MYTOOLS/python/lib/pkgconfig:\
$MYTOOLS/glib/lib/pkgconfig"
# user's alias
alias rm="rm -rf"
alias cls="clear"
