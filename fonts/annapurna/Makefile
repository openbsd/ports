# $OpenBSD: Makefile,v 1.1.1.1 2018/03/01 08:42:39 bentley Exp $

COMMENT =		Unicode-based font for Devanagari script

DISTNAME =		AnnapurnaSIL-1.203
PKGNAME =		annapurna-1.203

CATEGORIES =		fonts

HOMEPAGE =		https://software.sil.org/annapurna/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/annapurna/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/annapurna
DOCDIR =		${PREFIX}/share/doc/annapurna

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR} ${WEBFONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{*.ttf,web/*.woff} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{*.txt,documentation/*.txt} ${DOCDIR}

.include <bsd.port.mk>
