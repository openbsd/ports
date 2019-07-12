# $OpenBSD: Makefile,v 1.2 2019/07/12 20:46:13 sthen Exp $

V =			2.000
COMMENT =		Unicode Tagmukay Shifinagh script font
DISTNAME =		Tagmukay-${V}
PKGNAME =		tagmukay-${V}
CATEGORIES =		fonts

HOMEPAGE =		https://software.sil.org/tagmukay/
MAINTAINER =		George Rosamond <george@nycbug.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://software.sil.org/downloads/r/tagmukay/
EXTRACT_SUFX =		.zip

MODULE =		font

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/tagmukay
DOCDIR =		${PREFIX}/share/doc/tagmukay

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/{*.ttf,web/*.woff} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/README.txt ${DOCDIR}

.include <bsd.port.mk>
