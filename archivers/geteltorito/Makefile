# $OpenBSD: Makefile,v 1.2 2019/07/12 20:43:28 sthen Exp $

COMMENT =	el torito boot image extractor

DISTNAME =	geteltorito-0.6
CATEGORIES =	archivers

HOMEPAGE =	https://userpages.uni-koblenz.de/~krienke/ftp/noarch/geteltorito/

# GPL v2 only
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

WRKSRC =		${WRKDIR}/geteltorito
NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	 ${INSTALL_SCRIPT} ${WRKSRC}/geteltorito ${PREFIX}/bin/

.include <bsd.port.mk>
