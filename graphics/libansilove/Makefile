# $OpenBSD: Makefile,v 1.13 2020/03/17 13:53:19 fcambus Exp $

COMMENT =	library for converting ANSI, ASCII, and other formats to PNG

V =		1.2.1
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
