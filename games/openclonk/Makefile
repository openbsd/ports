# Uses x86-only blake2 implementation.
ONLY_FOR_ARCHS =	amd64 i386

V =		8.1
COMMENT =	tactical action game focusing on controlling Clonks
DISTNAME =	openclonk-${V}-src
PKGNAME =	openclonk-${V}
REVISION =	6
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	games x11

HOMEPAGE =	https://openclonk.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# engine: ISC
# content: CC BY-SA, CC BY, CC0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU Qt5Core Qt5Gui Qt5Widgets
WANTLIB += SDL2 X11 alut c execinfo freetype jpeg m miniupnpc ogg openal
WANTLIB += png tinyxml vorbis vorbisfile z

SITES =		https://www.openclonk.org/builds/release/${V}/

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		x11/qt5

BUILD_DEPENDS =	x11/gtksourceview3

LIB_DEPENDS =	audio/freealut \
		audio/libvorbis \
		devel/sdl2 \
		graphics/glew \
		graphics/jpeg \
		graphics/png \
		net/miniupnp/miniupnpc \
		textproc/tinyxml

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS +=	-DFREETYPE_INCLUDE_DIRS="${X11BASE}/include/freetype2" \
			-DHAVE_PRECOMPILED_HEADERS:BOOL=OFF \
			-DGLDEBUGPROCARB_USERPARAM_IS_CONST=ON

CXXFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include
MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

# Random, intermittent failures with Ninja during fake.
USE_NINJA =	No

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/openclonk-release-${V}-src

.include <bsd.port.mk>
