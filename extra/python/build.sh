#!/bin/sh -e

# Remove util-linux dependency among other things.
cat >> Modules/Setup <<EOF
*disabled*
_uuid nis ossaudiodev
EOF

# Reported 20-27% performance improvements.
# See: "PythonNoSemanticInterpositionSpeedup"
export CFLAGS="$CFLAGS -fno-semantic-interposition"
export LDFLAGS="$LDFLAGS -fno-semantic-interposition"

for patch in *.patch; do
    patch -p1 < "$patch"
done

./configure \
    --prefix=/usr \
    --enable-shared \
    --with-system-expat \
    --with-system-ffi \
    --with-ssl-default-suites='TLSv1.3:TLSv1.2+AEAD+ECDHE:TLSv1.2+AEAD+DHE' \
    --with-ensurepip=yes \
    --without-doc-strings

make EXTRA_CFLAGS="$CFLAGS -DTHREAD_STACK_SIZE=0x100000"
make install

ln -s python3 "$1/usr/bin/python"
ln -s pip3    "$1/usr/bin/pip"

# Let's make some kind of effort to reduce the overall
# size of Python by removing a bunch of rarely used and
# otherwise useless components.
#
# This can't be done via ./configure as the build system
# doesn't give you this much control over the process.
{
    cd "$1/usr/lib/python"*
    rm -rf test ./*/test ./*/tests
    rm -rf pydoc* idlelib turtle* config-*

    cd "$1/usr/bin"
    rm -f pydoc* idle*
}
