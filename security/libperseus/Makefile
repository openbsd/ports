# $OpenBSD: Makefile,v 1.7 2019/07/12 21:15:36 sthen Exp $

COMMENT = 	library to secure any kind of communication streams

DISTNAME = 	libperseus-1.0.2
REVISION =	1
CATEGORIES = 	security

SHARED_LIBS = 	perseus 0.0	

MASTER_SITES = 	${HOMEPAGE}/files/

HOMEPAGE = 	https://libperseus.googlecode.com/

MAINTAINER = 	Pierre-Emmanuel Andre <pea@openbsd.org>

# GPL/LGPL/MPL
PERMIT_PACKAGE =	Yes

WANTLIB = 	c m

EXTRACT_SUFX = 	.tgz


WRKDIST = 	${WRKDIR}

CFLAGS += 	-fPIC

do-test:
	@cd ${WRKBUILD} && ./perseus_test2

do-install:
	${INSTALL_DATA} ${WRKBUILD}/perseus.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/${DISTNAME}.so ${PREFIX}/lib/libperseus.so.${LIBperseus_VERSION}
	${INSTALL_PROGRAM} ${WRKBUILD}/perseus_test ${PREFIX}/bin

.include <bsd.port.mk>
