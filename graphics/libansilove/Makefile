COMMENT =	library for converting ANSI, ASCII, and other formats to PNG

V =		1.4.1
DISTNAME =	libansilove-${V}

SHARED_LIBS +=	ansilove	0.0 # 1.4

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

# BSD
PERMIT_PACKAGE =	Yes

SITES =	https://github.com/ansilove/libansilove/releases/download/${V}/

WANTLIB =	m gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
