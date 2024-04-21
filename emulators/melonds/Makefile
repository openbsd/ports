COMMENT =	Nintendo DS emulator

PKGNAME =	melonds-$V
V =		0.9.5
REVISION =	0

DIST_TUPLE +=	github melonDS-emu melonDS $V .

CATEGORIES =	emulators

HOMEPAGE =	https://melonds.kuribo64.net/

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += EGL ICE Qt5Core Qt5Gui Qt5Multimedia Qt5Network Qt5Widgets
WANTLIB += SDL2 SM X11 Xext archive c glib-2.0 intl m slirp

MODULES =	devel/cmake
LIB_DEPENDS =	archivers/libarchive \
		devel/sdl2 \
		net/libslirp \
		x11/qt5/qtmultimedia
BUILD_DEPENDS =	devel/kf6/extra-cmake-modules
RUN_DEPENDS =	x11/gtk+4,-guic \
		devel/desktop-file-utils


CONFIGURE_ARGS +=	-DQt5_DIR="${LOCALBASE}/lib/qt5/cmake/Qt5" \
			-DBUILD_STATIC=OFF \
			-DENABLE_JIT=OFF \
			-DENABLE_LTO_RELEASE=ON \
			-DENABLE_LTO=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
