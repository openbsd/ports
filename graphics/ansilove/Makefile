# $OpenBSD: Makefile,v 1.3 2016/01/22 14:24:30 tb Exp $

COMMENT =	ansi and ascii art to png converter

GH_ACCOUNT =	ansilove
GH_PROJECT =	ansilove
GH_TAGNAME =	3.0.2

CATEGORIES =	graphics

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m pthread gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/ansilove.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
