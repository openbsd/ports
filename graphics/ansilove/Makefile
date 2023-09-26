COMMENT =	ansi and ascii art to png converter

V =		4.2.0
DISTNAME =	ansilove-$V

CATEGORIES =	graphics

HOMEPAGE =	https://www.ansilove.org/

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB +=	ansilove c

SITES =		https://github.com/ansilove/ansilove/releases/download/$V/

LIB_DEPENDS =	graphics/libansilove

MODULES =	devel/cmake

.include <bsd.port.mk>
