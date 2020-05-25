# $OpenBSD: Makefile,v 1.5 2020/05/25 04:30:12 bentley Exp $

COMMENT =		Unicode-based font for Devanagari script

V =			1.204
DISTNAME =		AnnapurnaSIL-$V
PKGNAME =		annapurna-$V
REVISION =		1

CATEGORIES =		fonts

HOMEPAGE =		https://software.sil.org/annapurna/

MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/annapurna/

EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

FONTDIR =		${PREFIX}/share/fonts/annapurna
DOCDIR =		${PREFIX}/share/doc/annapurna

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR} ${WEBFONTDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{*.txt,documentation/*.txt} ${DOCDIR}

.include <bsd.port.mk>
