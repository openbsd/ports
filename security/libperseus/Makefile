# $OpenBSD: Makefile,v 1.4 2013/08/07 21:32:34 naddy Exp $

COMMENT = 	library to secure any kind of communication streams

DISTNAME = 	libperseus-1.0.2
REVISION =	0
CATEGORIES = 	security

SHARED_LIBS = 	perseus 0.0	

MASTER_SITES = 	${HOMEPAGE}/files/

HOMEPAGE = 	https://libperseus.googlecode.com/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPL/LGPL/MPL
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB = 	c m

EXTRACT_SUFX = 	.tgz


WRKDIST = 	${WRKDIR}

CFLAGS += 	-fPIC

do-test:
	@cd ${WRKBUILD} && ./perseus_test2

do-install:
	${INSTALL_DATA} ${WRKBUILD}/perseus.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/${FULLPKGNAME}.so ${PREFIX}/lib/libperseus.so.${LIBperseus_VERSION}
	${INSTALL_PROGRAM} ${WRKBUILD}/perseus_test ${PREFIX}/bin

.include <bsd.port.mk>
