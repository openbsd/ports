# See https://github.com/hrydgard/ppsspp/issues/8823
NOT_FOR_ARCHS =	${BE_ARCHS}

COMMENT =	Sony PlayStation Portable emulator

DISTNAME =	ppsspp-$V
V =		1.17.1
REVISION =	1

SITES =		https://github.com/hrydgard/ppsspp/releases/download/v$V/

EXTRACT_SUFX =	.tar.xz

CATEGORIES =	emulators

HOMEPAGE =	https://www.ppsspp.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLEW GLU ICE SDL2 SDL2_ttf SM X11 Xext avcodec avformat
WANTLIB += avutil c fontconfig m png snappy swresample swscale z zip
WANTLIB += zstd

MODULES =		devel/cmake \
			lang/python
MODPY_RUNDEP =		No

LIB_DEPENDS =		archivers/snappy \
			archivers/libzip \
			archivers/zstd \
			devel/sdl2 \
			devel/sdl2-ttf \
			graphics/ffmpeg \
			graphics/glew \
			graphics/png
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

COMPILER =		base-clang ports-gcc

# Wayland not yet supported in sdl2
CONFIGURE_ARGS =	-DUSE_SYSTEM_FFMPEG=ON \
			-DUSE_SYSTEM_LIBZIP=ON \
			-DUSE_SYSTEM_SNAPPY=ON \
			-DUSE_SYSTEM_ZSTD=ON \
			-DUSE_DISCORD=OFF \
			-DUSE_WAYLAND_WSI=OFF \
			-DUSING_EGL=OFF

DEBUG_PACKAGES = ${BUILD_PACKAGES}

# MIPS CPU core JIT
USE_NOBTCFI =	Yes

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/UI/NativeApp.cpp

.include <bsd.port.mk>
