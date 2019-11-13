# $OpenBSD: Makefile,v 1.19 2019/11/13 23:11:09 fcambus Exp $

COMMENT =	weather in terminal, with ANSI colors and Unicode symbols

V =		1.15.0
DISTNAME =	ansiweather-$V

CATEGORIES =	astro

HOMEPAGE =	https://github.com/fcambus/ansiweather

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/fcambus/ansiweather/releases/download/$V/

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
