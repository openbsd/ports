COMMENT =		open-source nvidia gamestream client

V =			6.1.0
PKGNAME =		moonlight-qt-${V}

DISTNAME =		MoonlightSrc-${V}
SITES =			https://github.com/moonlight-stream/moonlight-qt/releases/download/v${V}/
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		https://moonlight-stream.org

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt6Core Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6Quick Qt6QuickControls2 Qt6Svg
WANTLIB += SDL2 SDL2_ttf X11 avcodec avutil c crypto drm m opus
WANTLIB += placebo ssl swscale va va-drm va-x11 wayland-client

MODULES =		devel/qmake \
			x11/qt6

MODQMAKE_ARGS += 	CONFIG+='disable-libvdpau'

RUN_DEPENDS =		x11/gtk+4,-guic \
			devel/desktop-file-utils

# avoid build breakage due to dpb junking: moc creates dependencies on mbedtls
# headers but does not actually use them because USE_MBEDTLS isn't defined.
BUILD_DEPENDS =		security/polarssl

LIB_DEPENDS =		audio/opus \
			devel/sdl2 \
			devel/sdl2-ttf \
			graphics/ffmpeg \
			graphics/libplacebo \
			wayland/wayland \
			x11/qt6/qtdeclarative \
			x11/qt6/qtsvg

WRKDIST = ${WRKDIR}

.include <bsd.port.mk>
