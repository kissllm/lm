#!/bin/sh -e

# patch -p1 < no-fribidi.patch
# patch -p1 < fix-firefox.patch

# # Remove configure check for atk-bridge and fribidi. Funny enough, atk-bridge
# # is not required under wayland and there are ifdefs in place to ensure this.
# # The build system forces the dependency anyway so we must remove it.
# sed -e 's/\(ATK_PACKAGES="atk\) atk-bridge-2.0"/\1"/' \
#     -e 's/fribidi >= 0\.19\.7//g' \
#     configure > _
# mv -f _ configure

# # Don't build GTK examples/demos/testsuite.
# sed 's/demos tests testsuite examples//;s/docs \(m4macros\)/\1/' Makefile.in > _
# mv -f _ Makefile.in

# # Build libepoxy for gtk+3's sole use. This is the only package that requires
# # the library. While the build system supports building this as a subproject,
# # it is broken so we must do it ourselves.
# (
#     cd libepoxy
#     kiss-meson-config > meson.config
#
#     meson \
#         --prefix=/usr \
#         --cross-file="meson.config" \
#         --sysconfdir=/etc \
#         --mandir=/usr/share/man \
#         -Ddefault_library=static \
#         -Degl=yes \
#         -Dtests=false \
#         -Dglx=no \
#         -Dx11=false \
#         . output
#
#     ninja -C output
#
#     DESTDIR=$PWD ninja -C output install
# )

# Point gtk+3 to the vendored libepoxy.
export PKG_CONFIG_PATH=$PWD/libepoxy/usr/lib/pkgconfig:$PKG_CONFIG_PATH
# export CFLAGS="$CFLAGS -L$PWD/libepoxy/usr/lib "
# export CFLAGS="$CFLAGS -I$PWD/libepoxy/usr/include"
export GLIB_COMPILE_RESOURCES=/usr/bin/glib-compile-resources

kiss-meson-config > meson.config

meson \
    --prefix=/usr \
    --cross-file="meson.config" \
    -Dx11_backend=false \
    -Dwayland_backend=true \
    -Dquartz_backend=false \
    -Dwin32_backend=false \
    -Dintrospection=false \
    -Ddemos=false \
    -Dexamples=false \
    -Dtests=false \
    . build

# Fix build file
sed -i "s| /usr/lib/libEGL\.so| $KISS_ROOT/usr/lib/libEGL\.so|g" build/build.ninja

ninja -C build
DESTDIR=$1 ninja -C build install

# # GTK+3 on Wayland requires gsettings-desktop-schemas for gsettings to work
# # correctly. Under X11 it made use of xsettings but this is no longer the case.
# (
#     cd schemas
#     kiss-meson-config > meson.config
#
#     meson \
#         --prefix=/usr \
#         --cross-file="meson.config" \
#         -Dintrospection=false \
#         . output
#
#     ninja -C output
#     ninja -C output install
# )

# We don't compile with librsvg which leads to this utility solely causing
# compiler errors for some packages. It has no use at all.
rm -f "$1/usr/bin/gtk-encode-symbolic-svg"

# Remove epoxy references from installed pkg-config files. The build system
# should have done this for us as it is statically linked.
for f in "$1/usr/lib/pkgconfig/"*.pc; do
    sed 's/epoxy >= 1.4//' "$f" > _
    mv -f _ "$f"
done
