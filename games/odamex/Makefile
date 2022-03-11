COMMENT =	online multiplayer doom

V =		0.9.5
DISTNAME =	odamex-src-${V}
PKGNAME =	odamex-${V}

CATEGORIES =	games
HOMEPAGE =	https://odamex.net/
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SDL2_mixer SM X11 Xext
WANTLIB += c curl execinfo m miniupnpc png portmidi wx_baseu-3.0
WANTLIB += wx_baseu_net-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_xrc-3.0 z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=odamex/}
EXTRACT_SUFX =		.tar.bz2

FIX_CRLF_FILES =	CMakeLists.txt odalaunch/CMakeLists.txt

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

# Note that odamex won't build against the system libjsoncpp (doesn't build
# with std=gnu++98), so we use the bundled one. Upstream notified.
CONFIGURE_ENV +=	CXXFLAGS=-I${LOCALBASE}/include/miniupnpc \
			LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ARGS +=	-DNO_AG-ODALAUNCH_TARGET=YES

LIB_DEPENDS =		x11/wxWidgets \
			audio/portmidi \
			graphics/png \
			devel/sdl2-mixer \
			net/miniupnp/miniupnpc \
			net/curl
BUILD_DEPENDS =		archivers/deutex

NO_TEST =		Yes

EXAMPLES_DIR =	${PREFIX}/share/examples/odamex
post-install:
	mv ${PREFIX}/share/odamex/config-samples ${EXAMPLES_DIR}
	chown -r ${shareown}:${sharegrp} ${EXAMPLES_DIR}

.include <bsd.port.mk>
