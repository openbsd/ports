# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:26 sthen Exp $

COMMENT =	FTP listing and transfer tools

DISTNAME =	ftpcopy-0.6.7
CATEGORIES =	net

HOMEPAGE =	http://www.ohse.de/uwe/ftpcopy.html

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB =		c

MASTER_SITES =	http://www.ohse.de/uwe/ftpcopy/

WRKDIST =	${WRKDIR}/web/${DISTNAME}

NO_TEST =	Yes

do-configure:
	echo "${CC}" > ${WRKSRC}/src/conf-cc
	echo "${CC}" > ${WRKSRC}/src/conf-ld
	echo "${CFLAGS}" > ${WRKSRC}/src/conf-cflags
	echo "${CFLAGS} -Wall -W" > ${WRKSRC}/src/conf-cflagsw
	echo "${LDFLAGS}" > ${WRKSRC}/src/conf-ldflags

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/command/ftpcopy ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/command/ftpls ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/command/ftpcp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/* ${PREFIX}/man/man1

.include <bsd.port.mk>
