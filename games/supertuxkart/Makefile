ONLY_FOR_ARCHS =	amd64 i386 powerpc

COMMENT =		kart racing game with OSS mascots

V =			1.4
DISTNAME =		SuperTuxKart-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		https://supertuxkart.net/Main_Page

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 c crypto curl freetype harfbuzz
WANTLIB += jpeg m openal png sqlite3 vorbisfile z

SITES =		https://github.com/supertuxkart/stk-code/releases/download/$V/
EXTRACT_SUFX =		-src.tar.xz

MODULES =		devel/cmake

# gnu++0x
COMPILER =		base-clang ports-gcc

CXXFLAGS +=		-I${X11BASE}/include
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic

LIB_DEPENDS =		audio/openal>=0.0.8p7 \
			audio/libvorbis \
			devel/harfbuzz \
			devel/sdl2 \
			net/curl \
			graphics/png \
			graphics/jpeg

CONFIGURE_ARGS +=	-DUSE_WIIUSE=OFF \
			-DUSE_DNS_C=ON \
			-DBUILD_RECORDER=OFF

WRKDIST =		${WRKDIR}/${DISTNAME}-src

NO_TEST =		Yes

.include <bsd.port.mk>
