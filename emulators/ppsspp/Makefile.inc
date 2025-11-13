# See https://github.com/hrydgard/ppsspp/issues/8823
NOT_FOR_ARCHS ?=	${BE_ARCHS}

COMMENT ?=	Sony PlayStation Portable emulator

DISTNAME ?=	ppsspp-$V
V ?=		1.19.3
SITES ?=	https://github.com/hrydgard/ppsspp/releases/download/v$V/

EXTRACT_SUFX ?=	.tar.xz

CATEGORIES ?=	emulators

HOMEPAGE ?=	https://www.ppsspp.org/

# GPLv2+
PERMIT_PACKAGE ?=	Yes

MODULES ?=		devel/cmake \
			lang/python
MODPY_RUNDEP ?=		No

LIB_DEPENDS ?=		${PPSSPP_SUBDIR_LIB_DEPENDS} \
			archivers/snappy \
			archivers/libzip \
			archivers/zstd \
			graphics/ffmpeg \
			graphics/glew \
			graphics/png \
			net/miniupnp/miniupnpc

COMPILER ?=		base-clang ports-gcc

# Wayland not yet supported in sdl2
CONFIGURE_ARGS ?=	${PPSSPP_SUBDIR_CONFIGURE_ARGS} \
			-DUSE_CCACHE=OFF \
			-DUSE_SYSTEM_FFMPEG=ON \
			-DUSE_SYSTEM_LIBZIP=ON \
			-DUSE_SYSTEM_MINIUPNPC=ON \
			-DUSE_SYSTEM_SNAPPY=ON \
			-DUSE_SYSTEM_ZSTD=ON \
			-DUSE_DISCORD=OFF \
			-DUSE_WAYLAND_WSI=OFF \
			-DUSING_EGL=OFF

DEBUG_PACKAGES ?= ${BUILD_PACKAGES}

# MIPS CPU core JIT
USE_NOBTCFI ?=	Yes

NO_TEST ?=		Yes
