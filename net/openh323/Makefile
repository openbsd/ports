# $OpenBSD: Makefile,v 1.1.1.1 2002/07/28 19:35:51 couderc Exp $

COMMENT=		"H.323 Video Conferencing library"

VERSION=		1.8.5
DISTNAME=		openh323_${VERSION}
CATEGORIES=		net
NEED_VERSION=		1.531

HOMEPAGE=		http://www.openh323.org

MAINTAINER=		Damien Couderc <couderc@openbsd.org>

# MPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.openh323.org/bin/ \
			http://www.de.openh323.org/bin/

DISTFILES=		openh323_${VERSION}.tar.gz \
			pwlib_1.2.17.tar.gz


MAKE_FLAGS=		CC="${CC}"
MAKE_ENV=		PWLIBDIR=${WRKDIR}/pwlib \
			OPENH323DIR=${WRKDIR}/openh323

BUILD_DEPENDS=		::devel/bison

USE_GMAKE=		Yes

WRKDIST=		${WRKDIR}/openh323

ALL_TARGET=		opt

PWLDIR=		${WRKDIR}/pwlib
OPHDIR=		${WRKDIR}/openh323

post-patch:
	${PATCH} ${PWLDIR}/make/lib.mak < files/patch-lib_mak
	${PATCH} ${PWLDIR}/make/unix.mak < files/patch-unix_mak

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

do-install:
	${INSTALL_DATA} ${PWLDIR}/include/ptlib.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/include/ptclib
	${INSTALL_DATA} ${PWLDIR}/include/ptclib/*.h ${PREFIX}/include/ptclib
	${INSTALL_DATA_DIR} ${PREFIX}/include/ptlib
	${INSTALL_DATA} ${PWLDIR}/include/ptlib/*.h ${PREFIX}/include/ptlib
	${INSTALL_DATA} ${PWLDIR}/lib/libpt.so.* ${PREFIX}/lib
	${INSTALL_DATA} ${PWLDIR}/lib/libpt.a ${PREFIX}/lib

	${INSTALL_DATA_DIR} ${PREFIX}/include/openh323
	${INSTALL_DATA} ${OPHDIR}/include/*.h ${PREFIX}/include/openh323
	${INSTALL_DATA} ${OPHDIR}/lib/libh323.so.* ${PREFIX}/lib
	${INSTALL_DATA} ${OPHDIR}/lib/libh323.a ${PREFIX}/lib

	${INSTALL_PROGRAM} ${OPHDIR}/samples/simple/obj_OpenBSD_*_r/simph323 ${PREFIX}/bin

.include <bsd.port.mk>
