# $OpenBSD: Makefile,v 1.1.1.1 2017/11/15 08:48:45 bentley Exp $

TYPEFACE =		clearsans
COMMENT =		versatile font for on-screen legibility
DISTNAME =		clearsans-1.00
CATEGORIES =		fonts

EXTRACT_SUFX =		.zip

HOMEPAGE =		https://01.org/clear-sans

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://01.org/sites/default/files/downloads/clear-sans/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

WRKDIST =		${WRKDIR}
FONT_DISTDIR =		${WRKDIST}/TTF
DOCDIR =		${PREFIX}/share/doc/clearsans

do-install:
	${MODFONT_do-install}
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
