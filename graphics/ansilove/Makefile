# $OpenBSD: Makefile,v 1.19 2019/12/10 11:00:08 fcambus Exp $

COMMENT =	ansi and ascii art to png converter

V =		4.0.6
DISTNAME =	ansilove-$V

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	ansilove c m

MASTER_SITES =	https://github.com/ansilove/ansilove/releases/download/$V/

LIB_DEPENDS =	graphics/libansilove

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
