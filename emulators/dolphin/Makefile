# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:08 sthen Exp $

USE_WXNEEDED =		Yes
ONLY_FOR_ARCHS =	amd64

COMMENT-main =		Nintendo GameCube and Wii emulator with GUI
COMMENT-nogui =		Nintendo GameCube and Wii emulator

V =			5.0.0.20180901
DISTNAME =		dolphin-emu-${V}
PKGNAME-main =		dolphin-${V}
PKGNAME-nogui =		dolphin-nogui-${V}
REVISION-main =		2
REVISION-nogui =	2

MULTI_PACKAGES =	-main -nogui

.include <bsd.port.arch.mk>

GH_ACCOUNT =		dolphin-emu
GH_PROJECT =		dolphin
GH_COMMIT =		5f0d825f40b8aabe13eaef32d44ab667ff8e8c28

CATEGORIES =		emulators
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

cWANTLIB =	GL GLU ICE SDL2 SM X11 Xext Xi Xrandr avcodec avformat avutil \
		c curl hidapi iconv intl lzo2 m mbedcrypto mbedtls mbedx509 \
		miniupnpc png pthread pugixml pulse sfml-network sfml-system \
		sndio swscale usb-1.0 z ${COMPILER_LIBCXX}

WANTLIB-main =	${cWANTLIB} Qt5Core Qt5Gui Qt5Widgets
WANTLIB-nogui =	${cWANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake
BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS-nogui =	archivers/lzo2 \
			audio/pulseaudio \
			comms/libhidapi \
			converters/libiconv \
			devel/libusb1 \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/png \
			multimedia/sfml \
			net/curl \
			net/miniupnp/miniupnpc \
			security/polarssl \
			textproc/pugixml
LIB_DEPENDS-main =	${LIB_DEPENDS-nogui} \
			x11/qt5/qtbase
RUN_DEPENDS-main =	${RUN_DEPENDS-nogui} \
			devel/desktop-file-utils \
			emulators/dolphin,-nogui \
			x11/gtk+3,-guic
CONFIGURE_ARGS +=	-Dmandir:=${PREFIX}/man \
			-DENABLE_ALSA=OFF \
			-DQt5_DIR="${LOCALBASE}/lib/qt5/cmake/Qt5" \
			-DUSE_DISCORD_PRESENCE=OFF

# clang arches link with libLLVM. It's not versioned, therefore using BDEP +
# RDEP instead of LDEP
.if ${PROPERTIES:Mclang}
BUILD_DEPENDS +=	devel/llvm
RUN_DEPENDS-nogui +=	devel/llvm
.endif

.include <bsd.port.mk>
