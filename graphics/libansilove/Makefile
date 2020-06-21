# $OpenBSD: Makefile,v 1.16 2020/06/21 07:39:01 fcambus Exp $

COMMENT =	library for converting ANSI, ASCII, and other formats to PNG

V =		1.2.4
DISTNAME =	libansilove-${V}

SHARED_LIBS +=	ansilove	0.0 # 1.2

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/ansilove/libansilove/releases/download/${V}/

WANTLIB =	m gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
