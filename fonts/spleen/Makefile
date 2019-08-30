# $OpenBSD: Makefile,v 1.9 2019/08/30 21:51:47 fcambus Exp $

COMMENT =	monospaced bitmap fonts for consoles and terminals

V =		1.1.0
DISTNAME =	spleen-${V}
REVISION =	0

CATEGORIES =	fonts

HOMEPAGE =	https://github.com/fcambus/spleen

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE = Yes

MASTER_SITES =	https://github.com/fcambus/spleen/releases/download/${V}/

NO_TEST =	Yes
USE_X11 =	Yes

FONTDIR =	${PREFIX}/share/fonts/spleen

do-build:
	${GZIP_CMD} ${WRKSRC}/*.pcf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf.gz ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias-spleen ${FONTDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spleen
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/spleen

.include <bsd.port.mk>
