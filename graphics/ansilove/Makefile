# $OpenBSD: Makefile,v 1.11 2018/06/19 17:30:36 fcambus Exp $

COMMENT =	ansi and ascii art to png converter

V =		3.0.9
DISTNAME =	ansilove-$V

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =	c m gd

MASTER_SITES =	https://github.com/ansilove/ansilove/releases/download/$V/

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
