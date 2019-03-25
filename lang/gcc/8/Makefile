# $OpenBSD: Makefile,v 1.9 2019/03/25 20:17:46 pascal Exp $

BROKEN-i386 = ld: error: cp-demangle.c:(.debug_info+0x30115): has non-ABS relocation R_386_GOTOFF against symbol '.LC60'

ONLY_FOR_ARCHS = \
	aarch64 alpha amd64 arm hppa i386 mips64 mips64el powerpc sparc64

# XXX: sparc64
ONLY_FOR_ARCHS-ada = amd64 hppa i386 mips64 powerpc

DPB_PROPERTIES = parallel

V = 8.3.0
FULL_VERSION = $V
FULL_PKGVERSION = $V

ADASTRAP_LIBC-amd64 = 95.0
ADASTRAP_LIBM-amd64 = 10.1
ADASTRAP-amd64 = adastrap-amd64-$V-0.tar.xz
ADASTRAP_LIBC-arm = 88.0
ADASTRAP_LIBM-arm = 9.0
ADASTRAP-arm = adastrap-arm-4.9.4-0.tar.xz
ADASTRAP_LIBC-hppa = 95.0
ADASTRAP_LIBM-hppa = 10.1
ADASTRAP-hppa = adastrap-hppa-$V-0.tar.xz
ADASTRAP_LIBC-i386 = 93.0
ADASTRAP_LIBM-i386 = 10.1
ADASTRAP-i386 = adastrap-i386-8.2.0-0.tar.xz
ADASTRAP_LIBC-mips64 = 93.0
ADASTRAP_LIBM-mips64 = 10.1
ADASTRAP-mips64 = adastrap-mips64-8.2.0-0.tar.xz
ADASTRAP_LIBC-powerpc = 95.0
ADASTRAP_LIBM-powerpc = 10.1
ADASTRAP-powerpc = adastrap-powerpc-$V-0.tar.xz
ADASTRAP_LIBC-sparc64 = 93.0
ADASTRAP_LIBM-sparc64 = 10.1
ADASTRAP-sparc64 = adastrap-sparc64-6.5.0-0.tar.xz

PKGNAME-main =  gcc-${FULL_PKGVERSION}
PKGNAME-libs =	gcc-libs-${FULL_PKGVERSION}
PKGNAME-c++ =   g++-${FULL_PKGVERSION}
PKGNAME-f95 =   g95-${FULL_PKGVERSION}
PKGNAME-objc =  gobjc-${FULL_PKGVERSION}
PKGNAME-ada =   gnat-${FULL_PKGVERSION}
PKGSPEC-main = gcc->=8,<9

SHARED_LIBS =	estdc++		19.0 \
		gfortran	8.0 \
		objc		8.0 \
		lto_plugin      5.0 \
		itm		4.0 \
		atomic		3.0 \
		quadmath	3.0 \
		cc1		1.0 \
		cc1plugin	1.0 \
		cp1plugin	0.0

PSEUDO_FLAVORS = no_ada full
FLAVOR ?= 

MULTI_PACKAGES = -main -libs -f95 -objc -c++ -ada

MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>

.include <bsd.port.arch.mk>

DISTNAME =   	gcc-${FULL_VERSION}
DISTFILES =	${DISTNAME}.tar.xz
SUPDISTFILES =	${ADASTRAP-amd64}:0 ${ADASTRAP-arm}:0 ${ADASTRAP-hppa}:0 \
		${ADASTRAP-i386}:0 ${ADASTRAP-mips64}:0 ${ADASTRAP-powerpc}:0 \
		${ADASTRAP-sparc64}:0
EXTRACT_ONLY =	${DISTNAME}.tar.xz

BUILD_DEPENDS +=	devel/bison \
			devel/libexecinfo

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "arm"
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
		${BUILD_PKGPATH},-libs>=8,<9

MASTER_SITES =	${MASTER_SITE_GCC:=releases/gcc-$(FULL_VERSION)/}
MASTER_SITES0 =	https://distfiles.stumpf.co/ \
		https://spacehopper.org/mirrors/ \
		https://distfiles.bsdfrog.org/

LANGS = c,c++,fortran,objc
.if ${BUILD_PACKAGES:M-ada}
LANGS := ${LANGS},ada
DISTFILES += ${ADASTRAP-${MACHINE_ARCH}}:0
EXTRACT_ONLY += ${ADASTRAP-${MACHINE_ARCH}}
EXTRA_ENV += ADAC=${WRKDIR}/bin/egcc GNATBIND=${WRKDIR}/bin/gnatbind
CC = ${WRKDIR}/bin/egcc
CXX = ${WRKDIR}/bin/eg++
# make sure we link the right libestdc++.a in stage1 when using a bootstrap
CONFIGURE_ARGS += --with-stage1-ldflags="-L${WRKDIR}/bootstrap/lib"
TEST_DEPENDS += ${BUILD_PKGPATH},-ada
.endif

CONFIGURE_STYLE =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/gcc

EXTRA_ENV += am_cv_func_iconv=no
EXTRA_ENV += ac_cv_prog_M4=/usr/bin/m4
EXTRA_ENV += ac_cv_header_magic_h=no
EXTRA_ENV += lt_cv_path_SED=/usr/bin/sed
EXTRA_ENV += STRIP=/usr/bin/strip
MAKE_FLAGS +=	 ac_cv_path_mkdir=/bin/mkdir

CONFIGURE_ENV += ${EXTRA_ENV}
MAKE_ENV += ${EXTRA_ENV}

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
	--enable-default-ssp \
	--enable-default-pie \
	--without-isl

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS += --enable-cpp


SEPARATE_BUILD = flavored

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

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "alpha" || \
	${MACHINE_ARCH} == "arm" || \
	${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sh" || \
	${MACHINE_ARCH} == "sparc64"
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

WANTLIB-main =		${WANTLIB}
WANTLIB-ada =		${WANTLIB} pthread util
WANTLIB-libs =		m pthread

LIB_DEPENDS +=		devel/gmp,no_cxx,bootstrap \
			devel/mpfr \
			devel/libmpc
LIB_DEPENDS-libs =

.if ${MACHINE_ARCH:Mamd64}
CONFIG = x86_64-unknown-openbsd${OSREV}
.endif

post-extract:
.for f in egcc eg++
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

post-install:
.if ${BUILD_PACKAGES:M-ada}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adainclude
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adalib
.endif
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include-fixed
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/libgcc.a
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/libgcov.a

.include <bsd.port.mk>

ADA_PACKAGE = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME-ada}.tgz
GCC_PACKAGE = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME-main}.tgz
GXX_PACKAGE = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME-c++}.tgz

adastrap: ${ADA_PACKAGE} ${GCC_PACKAGE} ${GXX_PACKAGE}
.if !defined(ADASTRAP_LIBC-${MACHINE_ARCH}) || \
	!defined(ADASTRAP_LIBM-${MACHINE_ARCH})
	@echo 1>&2 "Error: you must specify libc and libm to bundle"
	@exit 1
.else
	mkdir -p ${WRKDIR}/prepare/bootstrap/system-libs
	cp /usr/lib/libc.so.${ADASTRAP_LIBC-${MACHINE_ARCH}} \
		${WRKDIR}/prepare/bootstrap/system-libs
	cp /usr/lib/libm.so.${ADASTRAP_LIBM-${MACHINE_ARCH}} \
		${WRKDIR}/prepare/bootstrap/system-libs
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${ADA_PACKAGE}
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${GCC_PACKAGE}
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${GXX_PACKAGE}
	rm -rf ${WRKDIR}/prepare/bootstrap/{+*,info,man,share}
	rm -rf ${WRKDIR}/prepare/bootstrap/lib/gcc/*-unknown-openbsd*/$V/include-fixed
	if ! ldd ${WRKDIR}/prepare/bootstrap/bin/egcc | \
		fgrep libc.so.${ADASTRAP_LIBC-${MACHINE_ARCH}} >/dev/null; then \
		echo 1>&2 "Error: adastrap egcc linked against unbundled libc"; \
		exit 1; \
	fi
	if ! ldd ${WRKDIR}/prepare/bootstrap/bin/egcc | \
		fgrep libm.so.${ADASTRAP_LIBM-${MACHINE_ARCH}} >/dev/null; then \
		echo 1>&2 "Error: adastrap egcc linked against unbundled libm"; \
		exit 1; \
	fi
	cd ${WRKDIR}/prepare && tar cf - bootstrap | \
		xz > ${FULLDISTDIR}/${ADASTRAP-${MACHINE_ARCH}}
.endif

