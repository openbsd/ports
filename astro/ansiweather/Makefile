# $OpenBSD: Makefile,v 1.11 2016/10/21 09:45:38 fcambus Exp $

COMMENT =	weather in terminal, with ANSI colors and Unicode symbols

GH_ACCOUNT =	fcambus
GH_PROJECT =	ansiweather
GH_TAGNAME =	1.09

CATEGORIES =	astro

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	textproc/jq

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/ansiweather ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ansiweather
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/ansiweather
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ansiweather
	${INSTALL_DATA} ${WRKSRC}/ansiweatherrc.example \
		${PREFIX}/share/examples/ansiweather
	${INSTALL_DATA} ${WRKSRC}/ansiweather.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
