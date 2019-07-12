# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:10 sthen Exp $

COMMENT =		Unicode-based font for Devanagari script

DISTNAME =		AnnapurnaSIL-1.204
PKGNAME =		annapurna-1.204

CATEGORIES =		fonts

HOMEPAGE =		https://software.sil.org/annapurna/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

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
