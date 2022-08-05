#!/usr/bin/env sh

mkdir -p bin
ln -sf /usr/bin/pigz  "$PWD/bin/gunzip"
ln -sf /usr/bin/gmake "$PWD/bin/make"
export PATH="$PWD/bin:$PATH"

./configure \
    --prefix=/usr \
    --sbindir=/usr/bin \
    --enable-iproute2 \
    --enable-pkcs11 \
    --enable-plugins \
    --enable-password-save \
    --enable-x509-alt-username \
    --disable-plugin-auth-pam

make
make DESTDIR="$1" PREFIX=/usr install
