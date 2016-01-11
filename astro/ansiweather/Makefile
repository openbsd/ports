# $OpenBSD: Makefile,v 1.7 2016/01/11 14:11:08 ajacoutot Exp $

COMMENT =	weather in terminal, with ANSI colors and Unicode symbols

GH_ACCOUNT =	fcambus
GH_PROJECT =	ansiweather
GH_TAGNAME =	1.06
REVISION =	0

CATEGORIES =	astro

MAINTAINER =	Frederic Cambus <fred@statdns.com>

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

.include <bsd.port.mk>
