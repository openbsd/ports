# $OpenBSD: Makefile,v 1.4 2020/05/25 03:40:07 bentley Exp $

COMMENT =		Unicode font for African Arabic script
V =			1.100
DISTNAME =		Alkalami-${V}
PKGNAME =		alkalami-${V}
CATEGORIES =		fonts
REVISION =		1

HOMEPAGE =		https://software.sil.org/alkalami/
MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFT 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/alkalami/
EXTRACT_SUFX =		.zip

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/alkalami
DOCDIR =		${PREFIX}/share/doc/alkalami

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/*.ttf ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{FONTLOG.txt,README.txt} ${DOCDIR}

.include <bsd.port.mk>
