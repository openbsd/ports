@option no-default-conflict
@pkgcfl egcs-*-core
@unexec install-info --delete --info-dir=%D/info %D/info/ecpp.info
@unexec install-info --delete --info-dir=%D/info %D/info/ecpp.info
bin/egcc
bin/ecpp
@comment bin/eprotoize
@comment bin/eunprotoize
bin/egcov
bin/@GCCARCH@-gcc
@comment lib/gcc-lib/@GCCARCH@/@VERSION@/SYSCALLS.c.X
lib/gcc-lib/@GCCARCH@/@VERSION@/cc1
lib/gcc-lib/@GCCARCH@/@VERSION@/collect2
lib/gcc-lib/@GCCARCH@/@VERSION@/cpp
lib/gcc-lib/@GCCARCH@/@VERSION@/libgcc.a
lib/gcc-lib/@GCCARCH@/@VERSION@/specs
lib/gcc-lib/@GCCARCH@/@VERSION@/include/syslimits.h
lib/gcc-lib/@GCCARCH@/@VERSION@/include/limits.h
lib/gcc-lib/@GCCARCH@/@VERSION@/include/float.h
@comment lib/gcc-lib/@GCCARCH@/@VERSION@/include/math.h
lib/gcc-lib/@GCCARCH@/@VERSION@/include/README
lib/gcc-lib/@GCCARCH@/@VERSION@/include/stdarg.h
lib/gcc-lib/@GCCARCH@/@VERSION@/include/machine/ansi.h
lib/gcc-lib/@GCCARCH@/@VERSION@/include/varargs.h
lib/libiberty.a
info/ecpp.info
info/ecpp.info-1
info/ecpp.info-2
info/ecpp.info-3
info/egcc.info
info/egcc.info-1
info/egcc.info-10
info/egcc.info-11
info/egcc.info-12
info/egcc.info-13
info/egcc.info-14
info/egcc.info-15
info/egcc.info-16
info/egcc.info-17
info/egcc.info-18
info/egcc.info-19
info/egcc.info-2
info/egcc.info-20
info/egcc.info-21
info/egcc.info-22
info/egcc.info-23
info/egcc.info-24
info/egcc.info-25
info/egcc.info-26
info/egcc.info-27
info/egcc.info-28
info/egcc.info-29
info/egcc.info-3
info/egcc.info-30
info/egcc.info-4
info/egcc.info-5
info/egcc.info-6
info/egcc.info-7
info/egcc.info-8
info/egcc.info-9
man/man1/ecccp.1
man/man1/egcc.1
@dirrm lib/gcc-lib/@GCCARCH@/@VERSION@/include/machine
@dirrm lib/gcc-lib/@GCCARCH@/@VERSION@/include
@dirrm lib/gcc-lib/@GCCARCH@/@VERSION@
@dirrm lib/gcc-lib/@GCCARCH@
@dirrm lib/gcc-lib
@dirrm @GCCARCH@/include
@dirrm @GCCARCH@
@exec [ ! -x /sbin/ldconfig ] || /sbin/ldconfig -m %D/lib
@unexec [ ! -x /sbin/ldconfig ] || /sbin/ldconfig -m %D/lib
@exec install-info --info-dir=%D/info %D/info/ecpp.info
@exec install-info --info-dir=%D/info %D/info/egcc.info
