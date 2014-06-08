# $OpenBSD: Makefile,v 1.36 2014/06/08 18:55:36 brad Exp $

BROKEN-mips64 = ld: not enough GOT space for local GOT entries
BROKEN-mips64el = ld: not enough GOT space for local GOT entries

ONLY_FOR_ARCHS = alpha amd64 i386 powerpc sparc64 mips64 mips64el
DPB_PROPERTIES = parallel

V = 4.8.3
FULL_VERSION = $V
FULL_PKGVERSION = $V

ADASTRAP_LIBC-i386 = 75.0
ADASTRAP_LIBM-i386 = 9.0
ADASTRAP-i386 = adastrap-i386-$V-0.tar.xz
ADASTRAP_LIBC-amd64 = 75.0
ADASTRAP_LIBM-amd64 = 9.0
ADASTRAP-amd64 = adastrap-amd64-$V-0.tar.xz
ADASTRAP_LIBC-sparc64 = 75.0
ADASTRAP_LIBM-sparc64 = 9.0
ADASTRAP-sparc64 = adastrap-sparc64-$V-0.tar.xz

PKGNAME-main =  gcc-${FULL_PKGVERSION}
PKGNAME-c++ =   g++-${FULL_PKGVERSION}
PKGNAME-estdc = libstdc++-${FULL_PKGVERSION}
PKGNAME-f95 =   g95-${FULL_PKGVERSION}
PKGNAME-java =  gcj-${FULL_PKGVERSION}
PKGNAME-objc =  gobjc-${FULL_PKGVERSION}
PKGNAME-ada =   gnat-${FULL_PKGVERSION}
# needs [gs]etcontext
#PKGNAME-go =	gccgo-${FULL_PKGVERSION}
PKGSPEC-main = gcc->=4.8,<4.9

REVISION-main	= 0
REVISION-c++	= 0
#REVISION-estdc	=
REVISION-f95	= 0
REVISION-java	= 0
REVISION-objc	= 0
REVISION-ada	= 0
#REVISION-go	=

SHARED_LIBS =	estdc++		16.0 \
		gfortran	5.0 \
		gcj		3.0 \
		gcj-tools	3.0 \
		gij		3.0 \
		objc		5.0 \
		ssp		3.0 \
		lto_plugin      2.0 \
		go		2.0 \
		itm		1.0 \
		atomic		0.0 \
		quadmath	0.0


PSEUDO_FLAVORS = no_c++ no_f95 no_objc no_java no_ada no_go full
FLAVOR ?= 

ONLY_FOR_ARCHS-ada = amd64 i386 sparc64
ONLY_FOR_ARCHS-java = amd64 i386 powerpc sparc64

MULTI_PACKAGES = -main -f95 -objc -c++ -estdc -java -ada

MAINTAINER =	Pascal Stumpf <Pascal.Stumpf@cubes.de>

.include <bsd.port.arch.mk>

# kill both C++ subpackages
.if !${BUILD_PACKAGES:M-c++}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-estdc}
.endif

DISTNAME =   	gcc-${FULL_VERSION}
DISTFILES =	${DISTNAME}.tar.bz2
# there's no ecj-4.8.jar
ECJ =		ecj-4.5.jar
SUPDISTFILES =	${ADASTRAP-amd64}:0 ${ADASTRAP-i386}:0 ${ECJ}:1 \
		${ADASTRAP-sparc64}:0
EXTRACT_ONLY =	${DISTNAME}.tar.bz2

BUILD_DEPENDS +=	devel/bison \
			devel/libexecinfo

TEST_DEPENDS = 	devel/dejagnu \
		devel/autogen

MASTER_SITES =	${MASTER_SITE_GCC:=releases/gcc-$(FULL_VERSION)/}
MASTER_SITES0 =	http://spacehopper.org/mirrors/ \
		http://distfiles.tmux.org/adastrap/ \
		https://distfiles.bsdfrog.org/
MASTER_SITES1 =	ftp://sources.redhat.com/pub/java/

LANGS = c
.if ${BUILD_PACKAGES:M-c++}
LANGS := ${LANGS},c++
TEST_DEPENDS += 	${BUILD_PKGPATH},-estdc>=4.8,<4.9
.endif
.if ${BUILD_PACKAGES:M-f95}
LANGS := ${LANGS},fortran
.endif
.if ${BUILD_PACKAGES:M-objc}
LANGS := ${LANGS},objc
.endif
.if ${BUILD_PACKAGES:M-java}
LANGS := ${LANGS},java
DISTFILES +=		${ECJ}:1
BUILD_DEPENDS +=	archivers/zip>=2.3p0
CONFIGURE_ARGS +=	--enable-libgcj --without-jar
.endif
.if ${BUILD_PACKAGES:M-ada}
LANGS := ${LANGS},ada
DISTFILES += ${ADASTRAP-${MACHINE_ARCH}}:0
EXTRACT_ONLY += ${ADASTRAP-${MACHINE_ARCH}}
EXTRA_ENV += ADAC=${WRKDIR}/bin/egcc GNATBIND=${WRKDIR}/bin/gnatbind
CC = ${WRKDIR}/bin/egcc
CXX = ${WRKDIR}/bin/eg++
TEST_DEPENDS += ${BUILD_PKGPATH},-ada
.endif
#.if ${BUILD_PACKAGES:M-go}
#LANGS := ${LANGS},go
#.endif

CONFIGURE_STYLE =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/gcc

EXTRA_ENV += am_cv_func_iconv=no JAR=no
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
	--disable-checking \
	--with-system-zlib \
	--disable-libmudflap \
	--disable-libgomp \
	--disable-tls \
	--with-as=/usr/bin/as \
	--with-ld=/usr/bin/ld \
	--with-gnu-ld \
	--with-gnu-as \
	--enable-threads=posix \
	--enable-wchar_t \
	--with-gmp="${LOCALBASE}" \
	--enable-languages=${LANGS} \
	--disable-libstdcxx-pch

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS += --enable-cpp

CONFIGURE_ARGS += ${CONFIGURE_SHARED}

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

.if ${MACHINE_ARCH} == "powerpc"
PKG_ARGS += -DPPC=1
.else
PKG_ARGS += -DPPC=0
.endif

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
PKG_ARGS += -DI386=1
.else
PKG_ARGS += -DI386=0
.endif

.if ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "sparc"
PKG_ARGS += -DSPARC=1
.else
PKG_ARGS += -DSPARC=0
.endif

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "arm" || \
	${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" || \
	${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sh" || \
	${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "sparc64"
PKG_ARGS += -DITM=1
.else
PKG_ARGS += -DITM=0
.endif

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "arm" || \
	${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc"
PKG_ARGS += -DATOMIC=1
.else
PKG_ARGS += -DATOMIC=0
.endif

# depends on __float128
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS += -DQUADMATH=1
.else
PKG_ARGS +=-DQUADMATH=0
.endif

RUN_DEPENDS =		${BUILD_PKGPATH},-main
WANTLIB =		c gmp m mpc mpfr z

RUN_DEPENDS-main =
RUN_DEPENDS-estdc =

RUN_DEPENDS-c++ =	${RUN_DEPENDS} \
			${BUILD_PKGPATH},-estdc>=4.8,<4.9
WANTLIB-estdc =		m
WANTLIB-java =		${WANTLIB} pthread
WANTLIB-main =		${WANTLIB} pthread

LIB_DEPENDS +=		devel/gmp>=4.2 \
			devel/mpfr \
			devel/libmpc
LIB_DEPENDS-estdc =

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
	echo 'GNAT_ROOT=${WRKDIR}/bootstrap GCC_ROOT=${WRKDIR}/bootstrap LD_LIBRARY_PATH=${WRKDIR}/bootstrap/system-libs exec ${WRKDIR}/bootstrap/bin/e$f "$$@"' >>${WRKDIR}/bin/$f
	chmod a+x ${WRKDIR}/bin/$f
.endfor
	rm -rf ${WRKDIR}/bootstrap/lib/gcc/*-unknown-openbsd*/$V/include-fixed
	ln -sf /usr/bin/nm ${WRKDIR}/bin/enm
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> \
		${WRKSRC}/libversions
.endfor
.if ${BUILD_PACKAGES:M-java}
	cp ${FULLDISTDIR}/${ECJ} ${WRKSRC}/ecj.jar
.endif
.if ${BUILD_PACKAGES:M-ada}
	perl -pi -e 's,^#define (_GLIBCXX_HAVE_GETS) .*,/* #undef $$1 */,' \
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
