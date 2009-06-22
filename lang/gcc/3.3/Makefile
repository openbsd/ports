# $OpenBSD: Makefile,v 1.37 2009/06/22 17:00:23 naddy Exp $

ONLY_FOR_ARCHS=	alpha amd64 i386 m68k sparc sparc64 powerpc vax

V=3.3.6
FULL_VERSION=3.3.6
FULL_PKGVERSION=3.3.6
BOOTSTRAP_GEN = 7
ADASTRAP = adastrap-i386-3.3.6-${BOOTSTRAP_GEN}.tgz

PKGNAME-main=	gcc-${FULL_PKGVERSION}p14
PKGNAME-c++ =	g++-${FULL_PKGVERSION}p12
PKGNAME-estdc=	libstdc++-${FULL_PKGVERSION}p3
PKGNAME-g77=	g77-${FULL_PKGVERSION}p11
PKGNAME-java=	gcj-${FULL_PKGVERSION}p8
PKGNAME-objc=	gobjc-${FULL_PKGVERSION}p12
PKGNAME-ada=	gnat-${FULL_PKGVERSION}p10
SHARED_LIBS=	estdc++		6.0 \
		g2c		1.0 \
		-org-w3c-dom	1.0 \
		-org-xml-sax	1.0 \
		gcj		5.0 \
		objc		2.0 \
		objc_gc		2.0

MAINTAINER=	Marc Espie <espie@openbsd.org>

PSEUDO_FLAVORS=c++ fortran objc java ada

.if ${MACHINE_ARCH} == "i386"
FLAVOR?=c++ fortran objc ada
.else
FLAVOR?=c++ fortran objc
.endif

.if ${FLAVOR:L:Mjava}
FLAVOR+=c++
.endif

BUILD_DEPENDS=	:autoconf-2.13:devel/autoconf/2.13
BUILD_DEPENDS+=	::devel/metaauto

# This can be patched out, apart from java that wants a pure parser.
BUILD_DEPENDS+= :bison-*:devel/bison


MULTI_PACKAGES=-main
# No sub packages description
DESCR=${PKGDIR}/DESCR
DESCR-main = ${DESCR}
DESCR-c++ = ${DESCR}
DESCR-estdc = ${DESCR}
DESCR-g77 = ${DESCR}
DESCR-java = ${DESCR}
DESCR-objc = ${DESCR}
DESCR-ada= ${DESCR}

REGRESS_DEPENDS=::devel/dejagnu

DISTNAME=	gcc-${FULL_VERSION}

DISTFILES=  ${DISTNAME}.tar.bz2
SUPDISTFILES=${ADASTRAP}:0

MASTER_SITES=	${MASTER_SITE_GCC:=releases/gcc-$(FULL_VERSION)/}
MASTER_SITES0=	ftp://quatramaran.ens.fr/pub/espie/

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gcc

LANGS=c

.if ${FLAVOR:L:Mc++}
LANGS:=${LANGS},c++
MULTI_PACKAGES+=-c++ -estdc
.endif

.if ${FLAVOR:L:Mfortran}
LANGS:=${LANGS},f77
MULTI_PACKAGES+=-g77
.endif

.if ${FLAVOR:L:Mobjc}
LANGS:=${LANGS},objc
MULTI_PACKAGES+=-objc
.endif

.if ${FLAVOR:L:Mjava}
LANGS:=${LANGS},java
MULTI_PACKAGES+=-java
CONFIGURE_ARGS+=--enable-java-gc=system-boehm
.endif

.if ${FLAVOR:L:Mada}
LANGS:=${LANGS},ada
MULTI_PACKAGES+=-ada
DISTFILES+=${ADASTRAP}:0
CONFIGURE_ENV=ADAC=${WRKDIR}/bin/egcc GNATBIND=${WRKDIR}/bin/gnatbind
MAKE_ENV=ADAC=${WRKDIR}/bin/egcc GNATBIND=${WRKDIR}/bin/gnatbind

post-build:
	cd ${WRKBUILD}/gcc && ${MAKE_PROGRAM} gnatlib_and_tools
.endif

post-extract:
.if ${FLAVOR:L:Mada}
.  for f in egcc gnatbind gnatmake gnatlink
	echo "#! /bin/sh" >${WRKDIR}/bin/$f
	echo 'GNAT_ROOT=${WRKDIR}/bootstrap GCC_ROOT=${WRKDIR}/bootstrap exec ${WRKDIR}/bootstrap/bin/$f "$$@"' >>${WRKDIR}/bin/$f
	chmod a+x ${WRKDIR}/bin/$f
.  endfor
.endif
	echo "# This file automatically generated" >> ${WRKSRC}/libversions
.for l v in ${SHARED_LIBS}
	echo "LIB$l_LTVERSION = -version-info ${v:S/./:/}" >> ${WRKSRC}/libversions
.endfor

post-install:
.if ${FLAVOR:L:Mada}
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc-lib/*/$V/adainclude
.endif
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/gcc-lib/*/$V/include

CONFIGURE_ENV+=am_cv_func_iconv=no

CONFIGURE_ARGS= \
	--verbose \
	--program-transform-name=s,^,e, \
	--disable-nls  \
	--with-system-zlib \
	--enable-languages=${LANGS}

# This is needed, as internal cpp is no longer compatible with the
# visible beast
CONFIGURE_ARGS+=--enable-cpp

.if ${FLAVOR:L:Mjava}
CONFIGURE_ARGS+=--enable-sjlj-exceptions
# No way around it, java wants a pure parser
BUILD_DEPENDS+=:bison-*:devel/bison
.endif


# if you wish to try your luck
#CONFIGURE_ARGS+= --enable-threads=posix

CONFIGURE_ARGS += --with-gnu-as 
CONFIGURE_ARGS += --with-gnu-ld 
CONFIGURE_ARGS += ${CONFIGURE_SHARED}

SEPARATE_BUILD=flavored

USE_GMAKE= yes

# you shouldn't skip bootstrap unless you know what you're doing
# use bootstrap-lean if you're pressed for space
ALL_TARGET=bootstrap

.if ${MACHINE_ARCH} == "m68k" || ${MACHINE_ARCH} == "sparc"
PKG_ARGS+=-DPIC=1
.else
PKG_ARGS+=-DPIC=0
.endif

.if ${MACHINE_ARCH} == "powerpc"
PKG_ARGS+=-DPPC=1
.else
PKG_ARGS+=-DPPC=0
.endif

RUN_DEPENDS=	:gcc-${FULL_PKGVERSION}:${PKGPATH}
WANTLIB=c

RUN_DEPENDS-main=

RUN_DEPENDS-estdc=
WANTLIB-estdc=

LIB_DEPENDS-java=gc::devel/boehm-gc

RUN_DEPENDS-c++ =${RUN_DEPENDS} ::${PKGPATH},-estdc


.include <bsd.port.mk>

ADA_PACKAGE=${PACKAGE_REPOSITORY}/i386/all/${PKGNAME-ada}${PKG_SUFX}
GCC_PACKAGE=${PACKAGE_REPOSITORY}/i386/all/${PKGNAME-main}${PKG_SUFX}


adastrap: ${ADA_PACKAGE} ${GCC_PACKAGE}
	mkdir -p ${WRKDIR}/prepare/bootstrap
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${ADA_PACKAGE}
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${GCC_PACKAGE}
	rm -rf ${WRKDIR}/prepare/bootstrap/{+*,info,man}
	cd ${WRKDIR}/prepare && tar zcf ${FULLDISTDIR}/${ADASTRAP} bootstrap
