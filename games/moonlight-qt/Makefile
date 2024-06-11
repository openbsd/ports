COMMENT =		open-source nvidia gamestream client

V =			5.0.1
PKGNAME =		moonlight-qt-${V}

DISTNAME =		MoonlightSrc-${V}
SITES =			https://github.com/moonlight-stream/moonlight-qt/releases/download/v${V}/

CATEGORIES =		games

HOMEPAGE =		https://moonlight-stream.org

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5Svg
WANTLIB += Qt5Widgets SDL2 SDL2_ttf X11 avcodec avutil c crypto
WANTLIB += m opus ssl wayland-client

MODULES =		devel/qmake \
			x11/qt5

MODQMAKE_ARGS += 	CONFIG+='disable-libvdpau disable-libdrm'

RUN_DEPENDS =		x11/gtk+4,-guic \
			devel/desktop-file-utils

LIB_DEPENDS =		graphics/ffmpeg \
			devel/sdl2 \
			devel/sdl2-ttf \
			audio/opus \
			wayland/wayland \
			x11/qt5/qtsvg \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtdeclarative

WRKDIST = ${WRKDIR}

.include <bsd.port.mk>
