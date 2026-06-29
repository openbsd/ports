# When updating/switching to a new version, remember to adapt devel/llvm!
#

# not tested: alpha, hppa, mips64el, powerpc
ONLY_FOR_ARCHS = aarch64 alpha amd64 arm hppa i386 mips64 mips64el \
	powerpc powerpc64 riscv64 sparc64

ONLY_FOR_ARCHS-ada = amd64 mips64 i386 powerpc
ONLY_FOR_ARCHS-dlang = aarch64 amd64 arm i386 powerpc64 sparc64

DPB_PROPERTIES = parallel

USE_NOEXECONLY = Yes

# local modifications to gcc to behave more like base-clang include:
# - default to gnu17 (instead of gnu23)
# - turn -Wimplicit-function-declaration and -Wincompatible-pointer-types
#   into simple warnings.
V = 16.1.0
GCC_PKGSPEC = >=16,<17

REVISION = 2

# aarch64, powerpc64 and sparc64 bootstrap contain only gdc
BOOTSTRAP-aarch64 = gcc-bootstrap-aarch64-16.1.0-0.tar.xz
BOOTSTRAP-amd64 = gcc-bootstrap-amd64-16.1.0-0.tar.xz
BOOTSTRAP-arm = gcc-bootstrap-arm-16.1.0-0.tar.xz
BOOTSTRAP-hppa = adastrap-hppa-8.3.0-1.tar.xz
BOOTSTRAP-i386 = gcc-bootstrap-i386-16.1.0-0.tar.xz
BOOTSTRAP-mips64 = gcc-bootstrap-mips64-16.1.0-0.tar.xz
BOOTSTRAP-powerpc = adastrap-powerpc-11.2.0-4.tar.xz
BOOTSTRAP-powerpc64 = gcc-bootstrap-powerpc64-16.1.0-0.tar.xz
BOOTSTRAP-sparc64 = gcc-bootstrap-sparc64-16.1.0-0.tar.xz

SHARED_LIBS =	estdc++		22.0 \
		gfortran	11.0 \
		objc		11.0 \
		lto_plugin      8.0 \
		itm		7.0 \
		atomic		6.0 \
		quadmath	6.0 \
		cc1		4.0 \
		cc1plugin	4.0 \
		cp1plugin	3.0 \
		gphobos		2.0 \
		gdruntime	2.0

PSEUDO_FLAVORS = no_ada full
FLAVOR ?=

MULTI_PACKAGES = -main -libs -f95 -objc -c++ -ada -dlang -bootstrap

.include <bsd.port.arch.mk>

DISTNAME =	gcc-${FULL_VERSION}
DISTFILES =	${DISTNAME}.tar.xz
.for _arch in ${ONLY_FOR_ARCHS-ada} ${ONLY_FOR_ARCHS-dlang}
SUPDISTFILES.strap += ${BOOTSTRAP-${_arch}}
.endfor
EXTRACT_ONLY =	${DISTFILES}

BUILD_DEPENDS +=	devel/bison

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "i386" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "powerpc64" || \
    ${MACHINE_ARCH} == "riscv64"
BUILD_DEPENDS +=	devel/gas
RUN_DEPENDS +=		devel/gas
RUN_DEPENDS-main +=	devel/gas
TEST_DEPENDS +=		devel/gas
CONFIGURE_ARGS +=	--with-as="${LOCALBASE}/bin/gas"
.endif

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
BUILD_DEPENDS +=	textproc/gsed
.endif

TEST_DEPENDS += devel/dejagnu \
		devel/autogen \
		${BUILD_PKGPATH},-libs>=16,<17

LANGS = c,c++,fortran,objc
.if ${BUILD_PACKAGES:M-ada} || ${BUILD_PACKAGES:M-dlang}
DISTFILES.strap += ${BOOTSTRAP-${MACHINE_ARCH}}
EXTRACT_ONLY += ${BOOTSTRAP-${MACHINE_ARCH}}
CC = ${WRKDIR}/bin/egcc
CXX = ${WRKDIR}/bin/eg++
GDC = ${WRKDIR}/bin/egdc
# make sure we link the right libestdc++.a in stage1 when using a bootstrap
CONFIGURE_ARGS += --with-stage1-ldflags="-L${WRKDIR}/bootstrap/lib"
.elif ${PROPERTIES:Mgcc4}
# We now require C++11.
BUILD_DEPENDS += lang/bootgcc
CC = ${LOCALBASE}/bootstrap-gcc/bin/gcc
CXX = ${LOCALBASE}/bootstrap-gcc/bin/g++
.endif

.if ${BUILD_PACKAGES:M-ada}
LANGS := ${LANGS},ada
TEST_DEPENDS += ${BUILD_PKGPATH},-ada
.endif

.if ${BUILD_PACKAGES:M-dlang}
LANGS := ${LANGS},d
.endif

CONFIGURE_STYLE =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/gcc

EXTRA_ENV += am_cv_func_iconv=no
EXTRA_ENV += ac_cv_prog_M4=/usr/bin/m4
EXTRA_ENV += ac_cv_header_magic_h=no
EXTRA_ENV += lt_cv_path_SED=/usr/bin/sed
EXTRA_ENV += STRIP=/usr/bin/strip
EXTRA_ENV += GDC=${GDC}
MAKE_FLAGS +=	 ac_cv_path_mkdir=/bin/mkdir

CONFIGURE_ENV += ${EXTRA_ENV}
MAKE_ENV += ${EXTRA_ENV}

.if ${MACHINE_ARCH} == "powerpc"
# powerpc lld can't link C++ code from gcc, "ld: error: relocation
# refers to a discarded section:" .data.rel.ro.* or
# .sdata.DW.ref.__gxx_personality_v0
USE_LLD = No
CONFIGURE_ENV += LDFLAGS="-Wl,--relax"
.elif ${MACHINE_ARCH:Mi386}
USE_LLD = No
# ld.lld: error: relocation R_386_PC32 cannot be used against symbol 'hash_set<nofree_string_hash, false, default_hash_traits<nofree_string_hash>>::hash_set(unsigned long, bool)'; recompile with -fPIC, etc.
.endif

# Note: the configure target passes CFLAGS to the configure script anyways.

CFLAGS = -O2 -g

CONFIGURE_ARGS += \
	--verbose \
	--program-transform-name=s,^,e, \
	--disable-nls  \
	--with-system-zlib \
	--disable-libmudflap \
	--disable-libgomp \
	--disable-libssp \
	--disable-tls \
	--with-gnu-ld \
	--with-gnu-as \
	--enable-threads=posix \
	--enable-wchar_t \
	--with-gmp="${LOCALBASE}" \
	--enable-languages=${LANGS} \
	--disable-libstdcxx-pch \
	--enable-standard-branch-protection \
	--without-isl

# Enable the stack protector by default where supported
.if ${MACHINE_ARCH} != "riscv64"
CONFIGURE_ARGS += \
	--enable-default-ssp
.endif

# PICFLAG broke gcc build after
# https://gcc.gnu.org/cgit/gcc/commit/?id=b6cb10af12cf869c1ae348c0e5cb2d364ef0abce
.if "${PICFLAG}" != ""
CONFIGURE_ARGS += \
	--enable-host-pie \
	--enable-default-pie
.endif
PICFLAG=

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS += --enable-cpp

SEPARATE_BUILD = Yes

USE_GMAKE = yes

.if ${FLAVOR:Mfull}
# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET = bootstrap
.else
# skip the stage2/stage3 bullshit under normal circumstances
ALL_TARGET = bootstrap2
.endif

MAKE_FLAGS += libstdc___la_LDFLAGS='-version-info 31:0:0 -lm'

.for _a in ${ONLY_FOR_ARCHS}
PKG_ARGS += -D${_a}=0
.endfor

PKG_ARGS += -D${MACHINE_ARCH}=1

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
PKG_ARGS += -DX86=1
.else
PKG_ARGS += -DX86=0
.endif

# Ada 128bit support
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "mips64" || \
	${MACHINE_ARCH} == "sparc64"
PKG_ARGS += -D128BIT=1
.else
PKG_ARGS += -D128BIT=0
.endif

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "alpha" || \
	${MACHINE_ARCH} == "arm" || \
	${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "powerpc" ||	${MACHINE_ARCH} == "powerpc64" || \
	${MACHINE_ARCH} == "sh" || ${MACHINE_ARCH} == "sparc64" || \
	${MACHINE_ARCH} == "riscv64"
PKG_ARGS += -DITM=1
.else
PKG_ARGS += -DITM=0
.endif

# depends on __float128
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS += -DQUADMATH=1
.else
PKG_ARGS += -DQUADMATH=0
.endif

RUN_DEPENDS +=		${BUILD_PKGPATH},-main
WANTLIB =		c gmp m mpc mpfr z

RUN_DEPENDS-main +=	${BUILD_PKGPATH},-libs
RUN_DEPENDS-libs =
RUN_DEPENDS-bootstrap =

WANTLIB-main =		${WANTLIB}
WANTLIB-ada =		${WANTLIB} pthread util
WANTLIB-libs =		m pthread
WANTLIB-bootstrap =

LIB_DEPENDS +=		devel/gmp,no_cxx,bootstrap \
			devel/mpfr \
			devel/libmpc
LIB_DEPENDS-libs =
LIB_DEPENDS-bootstrap =

post-extract:
.for f in egcc eg++ egdc
	echo "#! /bin/sh" >${WRKDIR}/bin/$f
	echo 'GNAT_ROOT=${WRKDIR}/bootstrap GCC_ROOT=${WRKDIR}/bootstrap LD_LIBRARY_PATH=${WRKDIR}/bootstrap/system-libs exec ${WRKDIR}/bootstrap/bin/$f "$$@"' >>${WRKDIR}/bin/$f
	chmod a+x ${WRKDIR}/bin/$f
.endfor
.for f in gnatbind gnatmake gnatlink
	echo "#! /bin/sh" >${WRKDIR}/bin/$f
	echo 'GNAT_ROOT=${WRKDIR}/bootstrap GCC_ROOT=${WRKDIR}/bootstrap LD_LIBRARY_PATH=${WRKDIR}/bootstrap/system-libs exec ${WRKDIR}/bootstrap/bin/$f "$$@"' >>${WRKDIR}/bin/$f
	chmod a+x ${WRKDIR}/bin/$f
.endfor
	rm -rf ${WRKDIR}/bootstrap/lib/gcc/*-unknown-openbsd*/$V/include-fixed
	ln -sf /usr/bin/nm ${WRKDIR}/bin/enm
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> \
		${WRKSRC}/libversions
.endfor
.if ${BUILD_PACKAGES:M-ada}
	perl -pi -e 's,^#define (_GCOMPILER_LIBCXX_HAVE_GETS) .*,/* #undef $$1 */,' \
		${WRKDIR}/bootstrap/include/c++/*/*/bits/c++config.h
.endif
	#-chmod 644 ${WRKDIR}/bootstrap/system-libs/lib*.so* # XXX
	#-cp `ls /usr/lib/libc.so.* | sort -t . -V | tail -1` ${WRKDIR}/bootstrap/system-libs/libc.so.* # XXX

# See: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=121386
	rm ${WRKSRC}/gcc/gengtype-lex.cc

post-install:
.if ${BUILD_PACKAGES:M-ada}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adainclude
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adalib
.endif
.if ${BUILD_PACKAGES:M-f95}
	ln -s egfortran ${PREFIX}/bin/gfortran
.endif
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include-fixed
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/libgcc.a
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/libgcov.a
.if ${BUILD_PACKAGES:M-bootstrap}
	rm -rf ${WRKDIR}/prepare
	mkdir -p ${WRKDIR}/prepare/bootstrap/system-libs
	cd ${PREFIX} && pax -rw -pe \
	    bin/ec++ bin/ecpp bin/eg++ bin/egcc bin/egcc-ar bin/egcc-nm \
	    bin/egcc-ranlib bin/egcov bin/egcov-dump bin/egcov-tool \
	    bin/elto-dump bin/${CONFIG}-ec++ bin/${CONFIG}-eg++ \
	    bin/${CONFIG}-egcc bin/${CONFIG}-egcc-ar \
	    bin/${CONFIG}-egcc-nm bin/${CONFIG}-egcc-ranlib \
	    bin/${CONFIG}-gcc-${V} \
	    include/c++ lib/gcc/${CONFIG}/${V} \
	    lib/libatomic.a lib/libatomic_asneeded.a lib/libestdc++.a \
	    lib/libesupc++.a lib/libesupc++.la lib/libstdc++exp.a \
	    lib/libstdc++exp.la lib/libstdc++fs.a lib/libstdc++fs.la \
	    libexec/gcc/${CONFIG}/${V} \
	    ${WRKDIR}/prepare/bootstrap
	if [ -x ${PREFIX}/bin/gnat ]; then \
		cd ${PREFIX} && pax -rw -pe bin/gnat* \
		    ${WRKDIR}/prepare/bootstrap; \
	fi
	if [ -x ${PREFIX}/bin/egdc ]; then \
		cd ${PREFIX} && pax -rw -pe bin/egdc bin/${CONFIG}-egdc \
		    lib/libgdruntime.* lib/libgphobos.* \
		    ${WRKDIR}/prepare/bootstrap; \
	fi
	rm -rf ${WRKDIR}/prepare/bootstrap/lib/gcc/${CONFIG}/$V/finclude \
	    ${WRKDIR}/prepare/bootstrap/lib/gcc/${CONFIG}/$V/include-fixed \
	    ${WRKDIR}/prepare/bootstrap/lib/gcc/${CONFIG}/$V/include/objc \
	    ${WRKDIR}/prepare/bootstrap/lib/gcc/${CONFIG}/$V/include/ISO_Fortran_binding.h \
	    ${WRKDIR}/prepare/bootstrap/lib/gcc/${CONFIG}/$V/libcaf_single.a \
	    ${WRKDIR}/prepare/bootstrap/lib/gcc/${CONFIG}/$V/libcaf_single.la \
	    ${WRKDIR}/prepare/bootstrap/libexec/gcc/${CONFIG}/$V/cc1obj \
	    ${WRKDIR}/prepare/bootstrap/libexec/gcc/${CONFIG}/$V/f951
	for f in `for e in cc1 cc1plus gnat1 d21; do \
	    if [ -e ${WRKDIR}/prepare/bootstrap/libexec/gcc/${CONFIG}/$V/$$e ]; then \
		ldd ${WRKDIR}/prepare/bootstrap/libexec/gcc/${CONFIG}/$V/$$e; \
	    fi; \
	done | awk '$$3 == "rlib" { print $$7 }' | sort -u`; do \
		cp $$f ${WRKDIR}/prepare/bootstrap/system-libs/; \
	done
	cd ${WRKDIR}/prepare && \
		tar cf ${PREFIX}/lib/gcc-bootstrap-${MACHINE_ARCH}.tar bootstrap
.endif

.include <bsd.port.mk>

.PHONY: bootstrap

bootstrap: fake
	${_PBUILD} xz -T0 -c ${WRKINST}${PREFIX}/lib/gcc-bootstrap-${MACHINE_ARCH}.tar | \
		${_PFETCH} tee ${FULLDISTDIR}/${BOOTSTRAP-${MACHINE_ARCH}} > /dev/null
