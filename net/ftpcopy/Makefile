# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:46 espie Exp $

COMMENT =	FTP listing and transfer tools

DISTNAME =	ftpcopy-0.6.7
CATEGORIES =	net

HOMEPAGE =	http://www.ohse.de/uwe/ftpcopy.html

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =	http://www.ohse.de/uwe/ftpcopy/

MAKE_FLAGS =	CC="${CC}"
FAKE_FLAGS =	prefix="${DESTDIR}/${PREFIX}"

WRKDIST =	${WRKDIR}/web/${DISTNAME}

USE_GROFF =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/command/ftpcopy ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/command/ftpls ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/command/ftpcp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/* ${PREFIX}/man/man1
                
.include <bsd.port.mk>
