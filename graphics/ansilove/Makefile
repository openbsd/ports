# $OpenBSD: Makefile,v 1.6 2017/04/16 21:34:22 fcambus Exp $

COMMENT =	ansi and ascii art to png converter

GH_ACCOUNT =	ansilove
GH_PROJECT =	ansilove
GH_TAGNAME =	3.0.5

CATEGORIES =	graphics

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
