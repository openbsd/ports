# $OpenBSD: Makefile,v 1.1.1.1 2018/03/01 08:45:42 bentley Exp $

V =			2.100
COMMENT =		traditional Arabic Unicode font
DISTNAME =		Scheherazade-${V}
PKGNAME =		scheherazade-${V}
CATEGORIES =		fonts

HOMEPAGE =		https://software.sil.org/scheherazade/
MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/scheherazade/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/scheherazade
DOCDIR =		${PREFIX}/share/doc/scheherazade

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/{*.ttf,web/*.woff} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.txt ${DOCDIR}

.include <bsd.port.mk>
