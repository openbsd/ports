USE_WXNEEDED =	Yes

COMMENT =	Nintendo DS emulator

PKGNAME =	melonds-$V
V =		1.1

DIST_TUPLE +=	github melonDS-emu melonDS $V .

CATEGORIES =	emulators

HOMEPAGE =	https://melonds.kuribo64.net/

MAINTAINER =	izzy Meyer <izder456@disroot.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE Qt6Core Qt6Gui Qt6Multimedia
WANTLIB += Qt6Network Qt6OpenGL Qt6OpenGLWidgets Qt6Widgets SDL2
WANTLIB += SM X11 Xext archive c enet glib-2.0 intl m slirp zstd faad

# dlopen'd
WANTLIB += wayland-egl

MODULES =	devel/cmake
LIB_DEPENDS =	archivers/libarchive \
		audio/faad \
		devel/sdl2 \
		net/enet \
		net/libslirp \
		wayland/wayland \
		x11/qt6/qtmultimedia
BUILD_DEPENDS =	devel/kf6/extra-cmake-modules
RUN_DEPENDS =	x11/gtk+4,-guic \
		devel/desktop-file-utils

CONFIGURE_ARGS +=	-DQt6_DIR="${LOCALBASE}/lib/qt6/cmake/Qt6" \
			-DUSE_SYSTEM_LIBSLIRP=ON \
			-DBUILD_STATIC=OFF \
			-DENABLE_LTO_RELEASE=ON \
			-DENABLE_LTO=ON \
			-DUSE_CCACHE=OFF

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
