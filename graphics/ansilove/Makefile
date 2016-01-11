# $OpenBSD: Makefile,v 1.1.1.1 2016/01/11 09:35:00 kirby Exp $

COMMENT =	ansi and ascii art to png converter

GH_ACCOUNT =	ansilove
GH_PROJECT =	ansilove
GH_TAGNAME =	3.0.1

CATEGORIES =	graphics

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m pthread gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/ansilove.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
