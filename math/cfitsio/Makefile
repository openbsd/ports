# $OpenBSD: Makefile,v 1.5 2009/06/03 09:44:23 sthen Exp $

COMMENT=	library for handling FITS data
CATEGORIES=	math graphics devel

HOMEPAGE= 	http://heasarc.gsfc.nasa.gov/fitsio/fitsio.html

DISTNAME=	cfitsio3006
WRKDIST=	${WRKDIR}/cfitsio

PKGNAME=	cfitsio-3.006p0
MASTER_SITES=	ftp://heasarc.gsfc.nasa.gov/software/fitsio/c/ \
		http://spacehopper.org/mirrors/

CONFIGURE_STYLE=autoconf no-autoheader
AUTOCONF_VERSION=2.13

# Mostly BSD-style, with two chunks of GPL code
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes

ALL_TARGET=	all fitscopy imcopy listhead
SHARED_LIBS=	cfitsio	0.0
SHLIB_SUFFIX=	.so.${LIBcfitsio_VERSION}
MAKE_FLAGS=	SHLIB_SUFFIX=${SHLIB_SUFFIX}
WANTLIB=	c m

DOCDIR=${PREFIX}/share/doc/cfitsio

do-install:
	${INSTALL_DATA} ${WRKDIST}/{fitsio.h,fitsio2.h,longnam.h,drvrsmem.h} ${PREFIX}/include
	${INSTALL_DATA}	${WRKBUILD}/libcfitsio.a ${PREFIX}/lib
	-${INSTALL_DATA} ${WRKBUILD}/libcfitsio${SHLIB_SUFFIX} ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/License.txt ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.doc ${DOCDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/{fitscopy,imcopy,listhead} ${PREFIX}/bin
	${INSTALL_DATA} ${WRKBUILD}/cookbook.c ${DOCDIR}

REGRESS_DEPENDS=::math/cfitsio
do-regress:
	cd ${WRKBUILD} && ${MAKE} testprog
	cd ${WRKBUILD} && ./testprog >testprog.lis
	diff ${WRKBUILD}/testprog.lis ${WRKBUILD}/testprog.out
	cmp ${WRKBUILD}/testprog.fit ${WRKBUILD}/testprog.std
	
.include <bsd.port.mk>
.if ${NO_SHARED_LIBS:L} == "no"
ALL_TARGET+=shared
.endif
