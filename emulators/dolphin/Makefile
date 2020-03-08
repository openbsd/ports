# $OpenBSD: Makefile,v 1.8 2020/03/08 02:15:51 thfr Exp $

USE_WXNEEDED =		Yes
ONLY_FOR_ARCHS =	amd64

COMMENT-main =		Nintendo GameCube and Wii emulator with GUI
COMMENT-nogui =		Nintendo GameCube and Wii emulator

V =			5.0.0.20190621
DISTNAME =		dolphin-emu-${V}
PKGNAME-main =		dolphin-${V}
PKGNAME-nogui =		dolphin-nogui-${V}

MULTI_PACKAGES =	-main -nogui

.include <bsd.port.arch.mk>

GH_ACCOUNT =		dolphin-emu
GH_PROJECT =		dolphin
GH_COMMIT =		981925a831e28d3967104e1a64dd8fa9b382660a

CATEGORIES =		emulators
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

cWANTLIB =		EGL GL GLU ICE SDL2 SM X11 Xext Xi Xrandr avcodec \
			avformat avutil c curl hidapi-libusb iconv intl lzo2 \
			m mbedcrypto mbedtls mbedx509 miniupnpc png pthread \
			pugixml sfml-network sfml-system sndio swscale \
			usb-1.0 z ${COMPILER_LIBCXX}

WANTLIB-main =	${cWANTLIB} Qt5Core Qt5Gui Qt5Widgets
WANTLIB-nogui =	${cWANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake
TEST_DEPENDS =		devel/gtest
BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS-nogui =	archivers/lzo2 \
			comms/libhidapi \
			converters/libiconv \
			devel/gettext,-runtime \
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
			-DENABLE_PULSEAUDIO=OFF \
			-DENABLE_LLVM=OFF \
			-DQt5_DIR="${LOCALBASE}/lib/qt5/cmake/Qt5" \
			-DUSE_DISCORD_PRESENCE=OFF
TEST_TARGET =		unittests

post-configure:
	@mv ${WRKSRC}/Externals/soundtouch/SoundTouch.h \
		${WRKSRC}/Externals/soundtouch/ExtSoundTouch.h

.include <bsd.port.mk>
