COMMENT =	free remake of One Must Fall 2097 game engine
DISTNAME =	openomf-0.6.5.2
CATEGORIES =	games x11

HOMEPAGE =	https://www.openomf.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 argtable2 c confuse enet intl m openal png xmp
WANTLIB += z

SITES =		https://mirrors.nycbug.org/pub/distfiles/

# C11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libxmp \
		audio/openal \
		devel/argtable \
		devel/libconfuse \
		devel/sdl2 \
		graphics/png \
		net/enet

NO_TEST =	Yes

.include <bsd.port.mk>
