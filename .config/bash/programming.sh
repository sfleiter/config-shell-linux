# vim: syn=sh

# C / C++
export CC=gcc
export CXX=g++
export CFLAGS="-g -W -Wall -O2 -fstack-protector -march=native"
export CXXFLAGS="-g -W -Wall -O2 -fstack-protector -march=native"
export LDFLAGS="-Wl,-O1,--hash-style=both"
export CCACHE_COMPRESS=1
PATH=$HOME/bin:/usr/lib/ccache:$PATH

# Java
JAVA_MAJOR_VERSION=8
export JAVA_HOME=/usr/lib/jvm/jre-1.${JAVA_MAJOR_VERSION}.0-openjdk

d=$HOME/opt/java/jboss-forge
if [ -d "$d" ] ; then
    export FORGE_HOME="$d"
    PATH=$PATH:$FORGE_HOME/bin
fi
d=$HOME/opt/java/scala
if [ -d "$d" ] ; then
    export SCALA_HOME="$d"
    PATH=$PATH:$SCALA_HOME/bin
fi

# Rust
d=$HOME/opt/rust
if [ -d "$d" ] ; then
    export RUST_BASE="$d"
    export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RUST_BASE/lib
    export RUST_SRC_PATH=$HOME/dev/workspace/rust/src
    PATH=$PATH:$RUST_BASE/bin
    PATH=$PATH:$HOME/dev/workspace/racer/target/release
fi

# Android adb / SDK
d=$HOME/opt/adt-bundle/sdk/platform-tools
if [ -d "$d" ] ; then
    PATH=$PATH:$d
fi

unset d
export PATH
