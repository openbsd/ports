# $OpenBSD: Makefile,v 1.3 2012/01/13 11:25:39 nigel Exp $

COMMENT =		pic-like interpreter for producing line graphics

DISTNAME =		dpic-2011.12.09

CATEGORIES =		graphics

HOMEPAGE =		https://ece.uwaterloo.ca/~aplevich/dpic/

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=		c m
WRKDIST =		${WRKDIR}/dpic

ALL_TARGET =		dpic

MASTER_SITES =		${HOMEPAGE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dpic ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/dpic.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dpic/
	cd ${WRKSRC}/examples/ && pax -rw * ${PREFIX}/share/examples/dpic/

NO_REGRESS =		Yes

.include <bsd.port.mk>
