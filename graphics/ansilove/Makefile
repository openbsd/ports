# $OpenBSD: Makefile,v 1.9 2017/12/20 14:39:45 fcambus Exp $

COMMENT =	ansi and ascii art to png converter

GH_ACCOUNT =	ansilove
GH_PROJECT =	ansilove
GH_TAGNAME =	3.0.8

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
