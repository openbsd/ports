COMMENT =		commander keen clone

V =			3.6.3
DISTNAME =		Commander-Genius-v${V}
PKGNAME =		commander-genius-${V}

CATEGORIES =		games

HOMEPAGE =		https://clonekeenplus.sourceforge.io/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image SDL2_mixer SDL2_ttf
WANTLIB += c curl m z

COMPILER =		base-clang ports-gcc base-gcc

SITES =			https://gitlab.com/Dringgstein/Commander-Genius/-/archive/v${V}/

USE_X11 =		Yes
NO_TEST =		Yes

MODULES =		devel/cmake

FIX_CRLF_FILES =	GsKit/base/interface/property_tree/tinyxml2.cpp

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="-I${X11BASE}/include"

LIB_DEPENDS =		devel/sdl2-image \
			devel/sdl2-mixer \
			devel/sdl2-ttf \
			net/curl

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

.include <bsd.port.mk>
