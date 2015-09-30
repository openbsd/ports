# $OpenBSD: Makefile,v 1.3 2015/09/30 06:57:35 jasper Exp $

COMMENT =	weather in terminal, with ANSI colors and Unicode symbols
DISTNAME =	ansiweather-${GH_TAGNAME}
CATEGORIES =	astro

MAINTAINER =	Frederic Cambus <fcambus@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =	fcambus
GH_PROJECT =	ansiweather
GH_TAGNAME =	1.05

RUN_DEPENDS =	textproc/jq

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
