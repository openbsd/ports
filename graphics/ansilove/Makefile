# $OpenBSD: Makefile,v 1.23 2020/07/04 19:47:46 fcambus Exp $

COMMENT =	ansi and ascii art to png converter

V =		4.1.2
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

.include <bsd.port.mk>
