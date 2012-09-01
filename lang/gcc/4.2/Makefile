# $OpenBSD: Makefile,v 1.83 2012/09/01 00:00:32 pascal Exp $

ONLY_FOR_ARCHS = alpha i386 m68k sparc sparc64 powerpc vax amd64
#BROKEN=adjust for types changes

V = 4.2.4
FULL_VERSION = $V
FULL_PKGVERSION = $V
BOOTSTRAP_GEN = 5
# XXX adastrap bundles libc.so.60.1 (from OpenBSD 5.0) to build on i386
LIBC_VERSION = 60.1
ADASTRAP = adastrap-i386-$V-${BOOTSTRAP_GEN}.tgz

PKGNAME-main =  gcc-${FULL_PKGVERSION}
PKGNAME-c++ =   g++-${FULL_PKGVERSION}
PKGNAME-estdc = libstdc++-${FULL_PKGVERSION}
PKGNAME-f95 =   g95-${FULL_PKGVERSION}
PKGNAME-java =  gcj-${FULL_PKGVERSION}
PKGNAME-objc =  gobjc-${FULL_PKGVERSION}
PKGNAME-ada =   gnat-${FULL_PKGVERSION}

REVISION-main = 12
REVISION-c++ = 16
REVISION-estdc = 4
REVISION-f95 = 14
REVISION-java = 14
REVISION-objc = 13
REVISION-ada = 12
EPOCH = 0

SHARED_LIBS =	estdc++		13.0 \
		gfortran	2.0 \
		-org-w3c-dom	1.0 \
		-org-xml-sax	1.0 \
		gcj		0.0 \
		ffi		0.0 \
		gcj-tools	0.0 \
		gij		0.0 \
		objc		2.0 \
		objc_gc		2.0 \
		ssp		0.0 \
		gomp		1.0

MAINTAINER =	Marc Espie <espie@openbsd.org>

USE_GROFF =	Yes
PSEUDO_FLAVORS = no_c++ no_f95 no_objc no_java no_ada full
FLAVOR ?= 

ONLY_FOR_ARCHS-ada = i386
ONLY_FOR_ARCHS-java = amd64 sparc64 i386

MULTI_PACKAGES = -main -f95 -objc -java -c++ -estdc -ada

.include <bsd.port.arch.mk>

# kill both C++ subpackages
.if !${BUILD_PACKAGES:M-c++}
BUILD_PACKAGES := ${BUILD_PACKAGES:N-estdc}
.endif

DISTFILES =  ${DISTNAME}.tar.bz2
SUPDISTFILES =	${ADASTRAP}:0

BUILD_DEPENDS += devel/autoconf/2.59
BUILD_DEPENDS += devel/metaauto
USE_LIBTOOL =	Yes

BUILD_DEPENDS += devel/bison


REGRESS_DEPENDS = 	devel/dejagnu \
			devel/autogen

DISTNAME =   	gcc-${FULL_VERSION}


MASTER_SITES =	${MASTER_SITE_GCC:=releases/gcc-$(FULL_VERSION)/}
#MASTER_SITES0 =	http://distfiles.bsdfrog.org/
MASTER_SITES0 = ftp://quatramaran.ens.fr/pub/espie/

CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/gcc

LANGS = c
.if ${BUILD_PACKAGES:M-c++}
LANGS := ${LANGS},c++
REGRESS_DEPENDS += 	libstdc++->=4.2,<4.3|libstdc++->=4.2v0,<4.3v0:${BUILD_PKGPATH},-estdc
.endif
.if ${BUILD_PACKAGES:M-f95}
LANGS := ${LANGS},fortran
CONFIGURE_ARGS += --with-gmp=${LOCALBASE}
.endif
.if ${BUILD_PACKAGES:M-objc}
LANGS := ${LANGS},objc
.endif
.if ${BUILD_PACKAGES:M-java}
LANGS := ${LANGS},java
BUILD_DEPENDS += archivers/zip>=2.3p0
CONFIGURE_ARGS += --enable-libgcj
.endif
.if ${BUILD_PACKAGES:M-ada}
LANGS := ${LANGS},ada
DISTFILES += ${ADASTRAP}:0
CONFIGURE_ENV = ADAC=${WRKDIR}/bin/egcc GNATBIND=${WRKDIR}/bin/gnatbind
MAKE_ENV = ADAC=${WRKDIR}/bin/egcc GNATBIND=${WRKDIR}/bin/gnatbind
CC = ${WRKDIR}/bin/egcc
REGRESS_DEPENDS += ${BUILD_PKGPATH},-ada
.endif

post-extract:
.for f in egcc gnatbind gnatmake gnatlink
	echo "#! /bin/sh" >${WRKDIR}/bin/$f
	echo 'GNAT_ROOT=${WRKDIR}/bootstrap GCC_ROOT=${WRKDIR}/bootstrap LD_LIBRARY_PATH=${WRKDIR}/bootstrap/system-libs exec ${WRKDIR}/bootstrap/bin/$f "$$@"' >>${WRKDIR}/bin/$f
	chmod a+x ${WRKDIR}/bin/$f
.endfor
	ln -s /usr/bin/nm ${WRKDIR}/bin/enm
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> ${WRKSRC}/libversions
.endfor
.if ${BUILD_PACKAGES:M-ada}
	${WRKDIR}/bin/egcc -v # if this fails, you must extract suitable libraries from the relevant OpenBSD release or use the no_ada FLAVOR.
.endif

post-install:
.if ${BUILD_PACKAGES:M-ada}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adainclude
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adalib
.endif
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include
CONFIGURE_ENV += am_cv_func_iconv=no
CONFIGURE_ENV += ac_cv_prog_M4=/usr/bin/m4

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
	--disable-libstdcxx-pch \
	--enable-languages=${LANGS}

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS += --enable-cpp

CONFIGURE_ARGS += --with-gnu-as 
CONFIGURE_ARGS += --with-gnu-ld 
CONFIGURE_ARGS += ${CONFIGURE_SHARED}

post-patch:
	cd ${WRKDIST}/libstdc++-v3 && AUTOCONF_VERSION=2.59 autoconf

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

MAKE_FLAGS = libstdc___la_LDFLAGS='-version-info 31:0:0 -lm'


.if ${MACHINE_ARCH} == "m68k" || ${MACHINE_ARCH} == "sparc"  || ${MACHINE_ARCH} == "amd64"
PKG_ARGS += -DPIC=1
.else
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

RUN_DEPENDS =		gcc-${FULL_PKGVERSION}v0:${BUILD_PKGPATH}
WANTLIB =		c

RUN_DEPENDS-main =
RUN_DEPENDS-estdc =
RUN_DEPENDS-java =	archivers/unzip \
			archivers/zip>=2.3p0

RUN_DEPENDS-c++ =	${RUN_DEPENDS} libstdc++->=4.2,<4.3|libstdc++->=4.2v0,<4.3v0:${BUILD_PKGPATH},-estdc
WANTLIB-estdc =		m
WANTLIB-java =		c m pthread z

LIB_DEPENDS-f95 =	devel/gmp>=4.2 \
			devel/mpfr
WANTLIB-f95 =		${WANTLIB} gmp mpfr
.include <bsd.port.mk>

ADA_PACKAGE = ${PACKAGE_REPOSITORY}/i386/all/${PKGNAME-ada}${PKG_SUFX}
GCC_PACKAGE = ${PACKAGE_REPOSITORY}/i386/all/${PKGNAME-main}${PKG_SUFX}

adastrap: ${ADA_PACKAGE} ${GCC_PACKAGE}
.if !defined(LIBC_VERSION)
	@echo 1>&2 "Error: you must specify a libc to bundle"
	@exit 1
.else
	mkdir -p ${WRKDIR}/prepare/bootstrap/system-libs
	cp /usr/lib/libc.so.${LIBC_VERSION} ${WRKDIR}/prepare/bootstrap/system-libs
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${ADA_PACKAGE}
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${GCC_PACKAGE}
	rm -rf ${WRKDIR}/prepare/bootstrap/{+*,info,man}
	cd ${WRKDIR}/prepare && tar zcf ${FULLDISTDIR}/${ADASTRAP} bootstrap
.endif

