COMMENT =	library for converting ANSI, ASCII, and other formats to PNG

V =		1.3.1
DISTNAME =	libansilove-${V}
REVISION =	0

SHARED_LIBS +=	ansilove	0.0 # 1.3

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/ansilove/libansilove/releases/download/${V}/

WANTLIB =	m gd

LIB_DEPENDS =	graphics/gd

MODULES =	devel/cmake
NO_TEST =	Yes

.include <bsd.port.mk>
