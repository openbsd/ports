# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:10 sthen Exp $

COMMENT =		Unicode font for African Arabic script
V =			1.100
DISTNAME =		Alkalami-${V}
PKGNAME =		alkalami-${V}
CATEGORIES =		fonts
REVISION =		0

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
	${INSTALL_DATA} ${WRKDIST}/{*.ttf,web/*.woff} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/{FONTLOG.txt,README.txt} ${DOCDIR}

.include <bsd.port.mk>
