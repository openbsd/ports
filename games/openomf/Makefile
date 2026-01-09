COMMENT =	free remake of One Must Fall 2097 game engine

V =		0.8.5
PKGNAME =	openomf-${V}
DIST_TUPLE +=	github omf2097 openomf ${V} .

CATEGORIES =	games x11

HOMEPAGE =	https://www.openomf.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 SDL2_mixer c confuse enet epoxy m miniupnpc
WANTLIB += natpmp opusfile png pthread xmp z

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libxmp \
		audio/opusfile \
		devel/libconfuse \
		devel/sdl2-mixer \
		graphics/png \
		net/enet \
		net/miniupnp/libnatpmp \
		net/miniupnp/miniupnpc

NO_TEST =	Yes

.include <bsd.port.mk>
