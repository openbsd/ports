# $OpenBSD: Makefile,v 1.44 2009/11/20 21:08:19 naddy Exp $

ONLY_FOR_ARCHS = alpha i386 m68k sparc sparc64 powerpc vax amd64
#BROKEN=adjust for types changes

V = 4.2.4
FULL_VERSION = $V
FULL_PKGVERSION = $V
BOOTSTRAP_GEN = 2
ADASTRAP = adastrap-i386-$V-${BOOTSTRAP_GEN}.tgz

PKGNAME-main =  gcc-${FULL_PKGVERSION}v0
PKGNAME-c++ =   g++-${FULL_PKGVERSION}p1v0
PKGNAME-estdc = libstdc++-${FULL_PKGVERSION}v0
PKGNAME-f95 =   g95-${FULL_PKGVERSION}p0v0
PKGNAME-java =  gcj-${FULL_PKGVERSION}v0
PKGNAME-objc =  gobjc-${FULL_PKGVERSION}p0v0
PKGNAME-ada =   gnat-${FULL_PKGVERSION}p0v0
SHARED_LIBS =	estdc++		11.0 \
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

PSEUDO_FLAVORS = c++ fortran objc java ada
.if ${MACHINE_ARCH} == "i386"
FLAVOR ?= c++ fortran objc ada java
.endif
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
FLAVOR ?= c++ fortran objc java
.else
FLAVOR ?= c++ fortran objc
.endif

.if ${FLAVOR:L:Mjava}
FLAVOR += c++
.endif

DISTFILES =  ${DISTNAME}.tar.bz2
SUPDISTFILES =	${ADASTRAP}:0

BUILD_DEPENDS += :autoconf-2.59:devel/autoconf/2.59
BUILD_DEPENDS += ::devel/metaauto
USE_LIBTOOL =	Yes

BUILD_DEPENDS += :bison-*:devel/bison


MULTI_PACKAGES = -main

REGRESS_DEPENDS = 	::devel/dejagnu \
			::devel/autogen

DISTNAME =   	gcc-${FULL_VERSION}


MASTER_SITES =	${MASTER_SITE_GCC:=releases/gcc-$(FULL_VERSION)/}
MASTER_SITES0 =	ftp://quatramaran.ens.fr/pub/espie/

CONFIGURE_STYLE =	gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC} ${WRKSRC}/gcc

LANGS = c
.if ${FLAVOR:L:Mc++}
LANGS := ${LANGS},c++
MULTI_PACKAGES += -c++ -estdc
REGRESS_DEPENDS += 	:libstdc++->=4.2,<4.3|libstdc++->=4.2v0,<4.3v0:${BUILD_PKGPATH},-estdc
.endif
.if ${FLAVOR:L:Mfortran}
LANGS := ${LANGS},fortran
MULTI_PACKAGES += -f95
CONFIGURE_ARGS += --with-gmp=${LOCALBASE}
.endif
.if ${FLAVOR:L:Mobjc}
LANGS := ${LANGS},objc
MULTI_PACKAGES += -objc
.endif
.if ${FLAVOR:L:Mjava}
LANGS := ${LANGS},java
MULTI_PACKAGES += -java
BUILD_DEPENDS += :zip->=2.3p0:archivers/zip
CONFIGURE_ARGS += --enable-libgcj
.endif
.if ${FLAVOR:L:Mada}
LANGS := ${LANGS},ada
MULTI_PACKAGES += -ada
DISTFILES += ${ADASTRAP}:0
CONFIGURE_ENV = ADAC=${WRKDIR}/bin/egcc GNATBIND=${WRKDIR}/bin/gnatbind
MAKE_ENV = ADAC=${WRKDIR}/bin/egcc GNATBIND=${WRKDIR}/bin/gnatbind
CC = ${WRKDIR}/bin/egcc
REGRESS_DEPENDS += ::${BUILD_PKGPATH},-ada
.endif

post-extract:
.for f in egcc gnatbind gnatmake gnatlink
	echo "#! /bin/sh" >${WRKDIR}/bin/$f
	echo 'GNAT_ROOT=${WRKDIR}/bootstrap GCC_ROOT=${WRKDIR}/bootstrap exec ${WRKDIR}/bootstrap/bin/$f "$$@"' >>${WRKDIR}/bin/$f
	chmod a+x ${WRKDIR}/bin/$f
.endfor
	ln -s /usr/bin/nm ${WRKDIR}/bin/enm
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> ${WRKSRC}/libversions
.endfor

post-install:
.if ${FLAVOR:L:Mada}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adainclude
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/adalib
.endif
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc/*/$V/include
CONFIGURE_ENV += am_cv_func_iconv=no
CONFIGURE_ENV += ac_cv_prog_CONFIGURED_M4=/usr/bin/m4

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

# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET = bootstrap

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

RUN_DEPENDS =		:gcc-${FULL_PKGVERSION}v0:${PKGPATH}
WANTLIB =		c

RUN_DEPENDS-main =
RUN_DEPENDS-estdc =
RUN_DEPENDS-java =

RUN_DEPENDS-c++ =	${RUN_DEPENDS} :libstdc++->=4.2,<4.3|libstdc++->=4.2v0,<4.3v0:${PKGPATH},-estdc
WANTLIB-estdc =		c m
WANTLIB-java =		c m pthread z

LIB_DEPENDS-f95 =	gmp:gmp->=4.2:devel/gmp \
			mpfr::devel/mpfr

.include <bsd.port.mk>

ADA_PACKAGE = ${PACKAGE_REPOSITORY}/i386/all/${PKGNAME-ada}${PKG_SUFX}
GCC_PACKAGE = ${PACKAGE_REPOSITORY}/i386/all/${PKGNAME-main}${PKG_SUFX}

adastrap: ${ADA_PACKAGE} ${GCC_PACKAGE}
	mkdir -p ${WRKDIR}/prepare/bootstrap
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${ADA_PACKAGE}
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${GCC_PACKAGE}
	rm -rf ${WRKDIR}/prepare/bootstrap/{+*,info,man}
	cd ${WRKDIR}/prepare && tar zcf ${FULLDISTDIR}/${ADASTRAP} bootstrap

