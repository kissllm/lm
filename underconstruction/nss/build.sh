#!/usr/bin/env sh

mkdir -p bin
ln -sf /usr/bin/pigz  "$PWD/bin/gunzip"
ln -sf /usr/bin/gmake "$PWD/bin/make"
export PATH="$PWD/bin:$PATH"

export FREEBL_NO_DEPEND=0
export NSS_USE_SYSTEM_SQLITE=1
export NSS_DISABLE_GTESTS=1
export NSS_ENABLE_WERROR=0
export USE_64=1
export BUILD_OPT=1
export NSS_DISABLE_DEPRECATED_SEED=1
export NSS_DISABLE_DEPRECATED_RC2=1
export NSPR_INCLUDE_DIR=/usr/include/nspr

export CC="${CC:-cc}"
export CCC="${CXX:-c++}"
export CXX="${CXX:-c++}"
# https://phabricator.services.mozilla.com/D134742
export CFLAGS="${CFLAGS} -force_integrated_as"
export CXXFLAGS="${CXXFLAGS} -force_integrated_as"
export AS=/usr/bin/clang
export HOSTAS=/usr/bin/clang
# make -C nss all
# make CC=clang HOSTCC=clang -no-intergrated-as LLVM=1 LLVM_IAS=1 -C nss all
make CC=clang HOSTCC=clang LLVM=1 LLVM_IAS=1 -C nss all

install -Dt "$1/usr/include/nss" -m644 dist/public/nss/*.h
install -Dt "$1/usr/include/nss/private" -m644 \
    dist/private/nss/blapi.h dist/private/nss/alghmac.h
install -Dt "$1/usr/lib"               dist/Linux*/lib/*.so
install -Dt "$1/usr/lib"         -m644 dist/Linux*/lib/*.chk

nspr_ver="$(nspr-config --version)"

# This is disgusting and I hate this package with a passion.
sed nss/pkg/pkg-config/nss.pc.in \
    -e "s,%libdir%,/usr/lib,g" \
    -e "s,%prefix%,/usr,g" \
    -e "s,%exec_prefix%,/usr/bin,g" \
    -e "s,%includedir%,/usr/include/nss,g" \
    -e "s,%NSPR_VERSION%,$nspr_ver,g" \
    -e "s,%NSS_VERSION%,$2,g" |
install -Dm644 /dev/stdin "$1/usr/lib/pkgconfig/nss.pc"

