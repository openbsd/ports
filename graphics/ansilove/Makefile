# $OpenBSD: Makefile,v 1.10 2018/02/28 12:34:00 fcambus Exp $

COMMENT =	ansi and ascii art to png converter

V =		3.0.8
DISTNAME =	ansilove-$V
REVISION =	0

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
