# $OpenBSD: Makefile,v 1.5 2016/09/22 12:57:18 fcambus Exp $

COMMENT =	ansi and ascii art to png converter

GH_ACCOUNT =	ansilove
GH_PROJECT =	ansilove
GH_TAGNAME =	3.0.4
REVISION =	0

CATEGORIES =	graphics

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m pthread gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
