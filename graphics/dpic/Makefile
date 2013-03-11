# $OpenBSD: Makefile,v 1.4 2013/03/11 11:10:52 espie Exp $

COMMENT =		pic-like interpreter for producing line graphics

DISTNAME =		dpic-2011.12.09

CATEGORIES =		graphics

HOMEPAGE =		https://ece.uwaterloo.ca/~aplevich/dpic/

# 2-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c m
WRKDIST =		${WRKDIR}/dpic

ALL_TARGET =		dpic

MASTER_SITES =		${HOMEPAGE}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/dpic ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/dpic.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dpic/
	cd ${WRKSRC}/examples/ && pax -rw * ${PREFIX}/share/examples/dpic/

NO_TEST =		Yes

.include <bsd.port.mk>
