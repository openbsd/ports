# $OpenBSD: Makefile,v 1.19 2020/06/29 08:56:20 fcambus Exp $

COMMENT =	monospaced bitmap fonts for consoles and terminals

V =		1.8.0
DISTNAME =	spleen-${V}

CATEGORIES =	fonts

HOMEPAGE =	https://github.com/fcambus/spleen

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE = Yes

MASTER_SITES =	https://github.com/fcambus/spleen/releases/download/${V}/

NO_TEST =	Yes
USE_X11 =	Yes

PKG_ARCH =	*

FONTDIR =	${PREFIX}/share/fonts/spleen

do-build:
	${GZIP_CMD} ${WRKSRC}/*.pcf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.{pcf.gz,otf} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias-spleen ${FONTDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spleen
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/spleen

.include <bsd.port.mk>
