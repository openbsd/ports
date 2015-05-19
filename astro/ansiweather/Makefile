# $OpenBSD: Makefile,v 1.1.1.1 2015/05/19 08:49:05 sthen Exp $

COMMENT =	weather in terminal, with ANSI colors and Unicode symbols
DISTNAME =	ansiweather-${GH_TAGNAME}
CATEGORIES =	astro

HOMEPAGE =	https://github.com/fcambus/ansiweather
MAINTAINER =	Frederic Cambus <fcambus@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =	fcambus
GH_PROJECT =	ansiweather
GH_TAGNAME =	1.02

RUN_DEPENDS =	shells/bash \
		textproc/jq

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ansiweather ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ansiweather
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/ansiweather
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ansiweather
	${INSTALL_DATA} ${WRKSRC}/ansiweatherrc.example \
		${PREFIX}/share/examples/ansiweather

.include <bsd.port.mk>
