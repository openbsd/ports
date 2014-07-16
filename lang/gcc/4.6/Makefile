# $OpenBSD: Makefile,v 1.76 2014/07/16 14:35:38 naddy Exp $

#ONLY_FOR_ARCHS = alpha amd64 hppa i386 powerpc sparc64
# ignore arches that have a valid 4.8 port
ONLY_FOR_ARCHS = alpha hppa
DPB_PROPERTIES = parallel

V = 4.6.4
FULL_VERSION = $V
FULL_PKGVERSION = $V

ADASTRAP_LIBC-i386 = 73.0
ADASTRAP-i386 = adastrap-i386-$V-4.tar.xz
ADASTRAP_LIBC-amd64 = 73.0
ADASTRAP-amd64 = adastrap-amd64-$V-4.tar.xz
ADASTRAP_LIBC-sparc64 = 73.0
ADASTRAP-sparc64 = adastrap-sparc64-$V-4.tar.xz
ADASTRAP_LIBC-hppa = 74.1
ADASTRAP-hppa = adastrap-hppa-$V-4.tar.xz
ADASTRAP_LIBC-alpha = 74.0
ADASTRAP-alpha = adastrap-alpha-$V-4.tar.xz

PKGNAME-main =  gcc-${FULL_PKGVERSION}
PKGNAME-c++ =   g++-${FULL_PKGVERSION}
PKGNAME-estdc = libstdc++-${FULL_PKGVERSION}
PKGNAME-f95 =   g95-${FULL_PKGVERSION}
PKGNAME-java =  gcj-${FULL_PKGVERSION}
PKGNAME-objc =  gobjc-${FULL_PKGVERSION}
PKGNAME-ada =   gnat-${FULL_PKGVERSION}
PKGNAME-go =	gccgo-${FULL_PKGVERSION}
PKGSPEC-main = gcc->=4.6,<4.7

REVISION-main =	9
REVISION-c++ =	6
#REVISION-estdc =
REVISION-f95 =	5
REVISION-java =	5
REVISION-objc =	4
REVISION-ada =	9
REVISION-go =	5

SHARED_LIBS =	estdc++		14.0 \
		gfortran	3.0 \
		gcj		1.0 \
		gcj-tools	1.0 \
		gij		1.0 \
		objc		3.0 \
		ssp		1.0 \
		lto_plugin      0.0 \
		go		0.0


PSEUDO_FLAVORS = no_c++ no_f95 no_objc no_java no_ada no_go full
FLAVOR ?= 

ONLY_FOR_ARCHS-ada = i386 amd64 sparc64 hppa alpha
ONLY_FOR_ARCHS-java = amd64 i386 sparc64
NOT_FOR_ARCHS-go = alpha hppa mips64el

MULTI_PACKAGES = -main -f95 -objc -java -c++ -estdc -ada -go

.include <bsd.port.arch.mk>

# kill both C++ subpackages
.if !${BUILD_PACKAGES:M-c++}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-estdc}
.endif

DISTNAME =   	gcc-${FULL_VERSION}
DISTFILES =	${DISTNAME}.tar.bz2
# there's no ecj-4.6.jar
ECJ =		ecj-4.5.jar
SUPDISTFILES =	${ADASTRAP-i386}:0 ${ADASTRAP-amd64}:0 ${ADASTRAP-sparc64}:0 \
		${ADASTRAP-hppa}:0 ${ADASTRAP-alpha}:0 ${ECJ}:1
EXTRACT_ONLY =	${DISTNAME}.tar.bz2


BUILD_DEPENDS +=	devel/bison \
			devel/libexecinfo

TEST_DEPENDS = 	devel/dejagnu \
			devel/autogen

MASTER_SITES =	${MASTER_SITE_GCC:=releases/gcc-$(FULL_VERSION)/}
MASTER_SITES0 =	http://spacehopper.org/mirrors/ http://distfiles.tmux.org/adastrap/
MASTER_SITES1 =	ftp://sources.redhat.com/pub/java/

LANGS = c
.if ${BUILD_PACKAGES:M-c++}
LANGS := ${LANGS},c++
TEST_DEPENDS += 	${BUILD_PKGPATH},-estdc>=4.6,<4.7
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

. if ${MACHINE_ARCH} == "alpha"
# ICE in combine.c on alpha at -O2
EXTRA_ENV += ADA_CFLAGS="-O1"
. endif

CC = ${WRKDIR}/bin/egcc
TEST_DEPENDS += ${BUILD_PKGPATH},-ada
.endif
.if ${BUILD_PACKAGES:M-go}
LANGS := ${LANGS},go
.endif

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

CFLAGS = -O2

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
	--disable-libstdcxx-pch \
	--enable-languages=${LANGS}

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS += --enable-cpp

CONFIGURE_ARGS += ${CONFIGURE_SHARED}

SEPARATE_BUILD = flavored

USE_GMAKE = yes
MAKE_FLAGS += --print-directory

.if ${FLAVOR:Mfull}
# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET = bootstrap
.else
# skip the stage2/stage3 bullshit under normal circumstances
ALL_TARGET = bootstrap2
.endif

MAKE_FLAGS += libstdc___la_LDFLAGS='-version-info 31:0:0 -lm'

.if ${MACHINE_ARCH} == "sparc"  || ${MACHINE_ARCH} == "amd64"
PIC = 1
PKG_ARGS += -DPIC=1
.else
PIC = 0
PKG_ARGS += -DPIC=0
.endif

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

RUN_DEPENDS =		${BUILD_PKGPATH},-main
WANTLIB =		c gmp m mpc mpfr z

RUN_DEPENDS-main =
RUN_DEPENDS-estdc =

RUN_DEPENDS-c++ =	${RUN_DEPENDS} \
			${BUILD_PKGPATH},-estdc>=4.6,<4.7
RUN_DEPENDS-ada =	${FULLPKGNAME-main}:${BUILD_PKGPATH}
WANTLIB-estdc =		m
WANTLIB-f95 =		${WANTLIB}
WANTLIB-java =		${WANTLIB} pthread
WANTLIB-go =		${WANTLIB} pthread

LIB_DEPENDS +=		devel/gmp>=4.2 \
			devel/mpfr \
			devel/libmpc
LIB_DEPENDS-estdc =

.if ${MACHINE_ARCH:Mamd64}
CONFIG = x86_64-unknown-openbsd${OSREV}
.endif

post-extract:
.for f in egcc gnatbind gnatmake gnatlink
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
.if ${BUILD_PACKAGES:M-java}
	cp ${FULLDISTDIR}/${ECJ} ${WRKSRC}/ecj.jar
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
.if ${PIC} == "1"
	chown ${BINOWN}:${BINGRP} ${PREFIX}/lib/gcc/${CONFIG}/${V}/fpic/libgcc.a
	chown ${BINOWN}:${BINGRP} \
		${PREFIX}/lib/gcc/${CONFIG}/${V}/fpic/libgcov.a
.endif

.include <bsd.port.mk>

ADA_PACKAGE = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME-ada}.tgz
GCC_PACKAGE = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME-main}.tgz

adastrap: ${ADA_PACKAGE} ${GCC_PACKAGE}
.if !defined(ADASTRAP_LIBC-${MACHINE_ARCH})
	@echo 1>&2 "Error: you must specify a libc to bundle"
	@exit 1
.else
	mkdir -p ${WRKDIR}/prepare/bootstrap/system-libs
	cp /usr/lib/libc.so.${ADASTRAP_LIBC-${MACHINE_ARCH}} \
		${WRKDIR}/prepare/bootstrap/system-libs
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${ADA_PACKAGE}
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${GCC_PACKAGE}
	rm -rf ${WRKDIR}/prepare/bootstrap/{+*,info,man}
	rm -rf ${WRKDIR}/prepare/bootstrap/lib/gcc/*-unknown-openbsd*/$V/include-fixed
	if ! ldd ${WRKDIR}/prepare/bootstrap/bin/egcc | \
		fgrep libc.so.${ADASTRAP_LIBC-${MACHINE_ARCH}} >/dev/null; then \
		echo 1>&2 "Error: adastrap egcc linked against wrong libc"; \
		exit 1; \
	fi
	cd ${WRKDIR}/prepare && tar cf - bootstrap | \
		xz > ${FULLDISTDIR}/${ADASTRAP-${MACHINE_ARCH}}
.endif

