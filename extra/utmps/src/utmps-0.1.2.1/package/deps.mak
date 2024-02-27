#
# This file has been generated by tools/gen-deps.sh
#

src/include/utmps/utmps.h: src/include/utmps/utmpx.h
src/include/utmpx.h: src/include/utmps/utmpx.h
src/utmps/utmps-internal.h: src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/endutxent.o src/utmps/endutxent.lo: src/utmps/endutxent.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/getutxent.o src/utmps/getutxent.lo: src/utmps/getutxent.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/getutxid.o src/utmps/getutxid.lo: src/utmps/getutxid.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/getutxline.o src/utmps/getutxline.lo: src/utmps/getutxline.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/logwtmp.o src/utmps/logwtmp.lo: src/utmps/logwtmp.c src/include/utmps/utmpx.h
src/utmps/pututxline.o src/utmps/pututxline.lo: src/utmps/pututxline.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/setutxent.o src/utmps/setutxent.lo: src/utmps/setutxent.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/updwtmpx.o src/utmps/updwtmpx.lo: src/utmps/updwtmpx.c src/include/utmps/config.h src/include/utmps/utmps.h
src/utmps/utmps-utmpd.o src/utmps/utmps-utmpd.lo: src/utmps/utmps-utmpd.c src/utmps/utmps-internal.h src/include/utmps/utmpx.h
src/utmps/utmps-write.o src/utmps/utmps-write.lo: src/utmps/utmps-write.c src/include/utmps/config.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/utmps-wtmpd.o src/utmps/utmps-wtmpd.lo: src/utmps/utmps-wtmpd.c src/utmps/utmps-internal.h src/include/utmps/utmpx.h
src/utmps/utmps_end.o src/utmps/utmps_end.lo: src/utmps/utmps_end.c src/include/utmps/utmps.h
src/utmps/utmps_getent.o src/utmps/utmps_getent.lo: src/utmps/utmps_getent.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/utmps_getid.o src/utmps/utmps_getid.lo: src/utmps/utmps_getid.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/utmps_getline.o src/utmps/utmps_getline.lo: src/utmps/utmps_getline.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/utmps_here.o src/utmps/utmps_here.lo: src/utmps/utmps_here.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/utmps_here_maybe_init.o src/utmps/utmps_here_maybe_init.lo: src/utmps/utmps_here_maybe_init.c src/utmps/utmps-internal.h src/include/utmps/config.h src/include/utmps/utmps.h
src/utmps/utmps_putline.o src/utmps/utmps_putline.lo: src/utmps/utmps_putline.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/utmps_rewind.o src/utmps/utmps_rewind.lo: src/utmps/utmps_rewind.c src/utmps/utmps-internal.h src/include/utmps/utmps.h
src/utmps/utmps_start.o src/utmps/utmps_start.lo: src/utmps/utmps_start.c src/include/utmps/utmps.h
src/utmps/utmps_updwtmpx.o src/utmps/utmps_updwtmpx.lo: src/utmps/utmps_updwtmpx.c src/utmps/utmps-internal.h src/include/utmps/utmps.h src/include/utmps/utmpx.h
src/utmps/utmps_utmpx_pack.o src/utmps/utmps_utmpx_pack.lo: src/utmps/utmps_utmpx_pack.c src/include/utmps/utmpx.h
src/utmps/utmps_utmpx_unpack.o src/utmps/utmps_utmpx_unpack.lo: src/utmps/utmps_utmpx_unpack.c src/include/utmps/utmpx.h
src/utmps/utmpxname.o src/utmps/utmpxname.lo: src/utmps/utmpxname.c src/include/utmps/utmpx.h

ifeq ($(strip $(STATIC_LIBS_ARE_PIC)),)
libutmps.a.xyzzy: src/utmps/endutxent.o src/utmps/getutxent.o src/utmps/getutxid.o src/utmps/getutxline.o src/utmps/logwtmp.o src/utmps/pututxline.o src/utmps/setutxent.o src/utmps/updwtmpx.o src/utmps/utmpxname.o src/utmps/utmps_end.o src/utmps/utmps_getent.o src/utmps/utmps_getid.o src/utmps/utmps_getline.o src/utmps/utmps_here.o src/utmps/utmps_here_maybe_init.o src/utmps/utmps_putline.o src/utmps/utmps_rewind.o src/utmps/utmps_start.o src/utmps/utmps_updwtmpx.o src/utmps/utmps_utmpx_pack.o src/utmps/utmps_utmpx_unpack.o
else
libutmps.a.xyzzy: src/utmps/endutxent.lo src/utmps/getutxent.lo src/utmps/getutxid.lo src/utmps/getutxline.lo src/utmps/logwtmp.lo src/utmps/pututxline.lo src/utmps/setutxent.lo src/utmps/updwtmpx.lo src/utmps/utmpxname.lo src/utmps/utmps_end.lo src/utmps/utmps_getent.lo src/utmps/utmps_getid.lo src/utmps/utmps_getline.lo src/utmps/utmps_here.lo src/utmps/utmps_here_maybe_init.lo src/utmps/utmps_putline.lo src/utmps/utmps_rewind.lo src/utmps/utmps_start.lo src/utmps/utmps_updwtmpx.lo src/utmps/utmps_utmpx_pack.lo src/utmps/utmps_utmpx_unpack.lo
endif
libutmps.so.xyzzy: EXTRA_LIBS := -lskarnet
libutmps.so.xyzzy: src/utmps/endutxent.lo src/utmps/getutxent.lo src/utmps/getutxid.lo src/utmps/getutxline.lo src/utmps/logwtmp.lo src/utmps/pututxline.lo src/utmps/setutxent.lo src/utmps/updwtmpx.lo src/utmps/utmpxname.lo src/utmps/utmps_end.lo src/utmps/utmps_getent.lo src/utmps/utmps_getid.lo src/utmps/utmps_getline.lo src/utmps/utmps_here.lo src/utmps/utmps_here_maybe_init.lo src/utmps/utmps_putline.lo src/utmps/utmps_rewind.lo src/utmps/utmps_start.lo src/utmps/utmps_updwtmpx.lo src/utmps/utmps_utmpx_pack.lo src/utmps/utmps_utmpx_unpack.lo
utmps-utmpd: EXTRA_LIBS := -lskarnet ${MAYBEPTHREAD_LIB}
utmps-utmpd: src/utmps/utmps-utmpd.o libutmps.a.xyzzy ${LIBNSSS}
utmps-write: EXTRA_LIBS := -lskarnet ${SOCKET_LIB} ${MAYBEPTHREAD_LIB}
utmps-write: src/utmps/utmps-write.o libutmps.a.xyzzy ${LIBNSSS} #{SYSCLOCK_LIB}
utmps-wtmpd: EXTRA_LIBS := -lskarnet ${MAYBEPTHREAD_LIB}
utmps-wtmpd: src/utmps/utmps-wtmpd.o libutmps.a.xyzzy ${LIBNSSS}
