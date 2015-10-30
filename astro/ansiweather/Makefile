# $OpenBSD: Makefile,v 1.4 2015/10/30 16:40:18 sthen Exp $

COMMENT =	weather in terminal, with ANSI colors and Unicode symbols
DISTNAME =	ansiweather-${GH_TAGNAME}
CATEGORIES =	astro

MAINTAINER =	Frederic Cambus <fcambus@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =	fcambus
GH_PROJECT =	ansiweather
GH_TAGNAME =	1.06

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
