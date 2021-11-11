# $OpenBSD: Makefile,v 1.2 2021/11/11 07:11:18 rsadowski Exp $

COMMENT =		open-source nvidia gamestream client

V =			3.1.4
PKGNAME =		moonlight-qt-${V}

DISTNAME =		MoonlightSrc-${V}
MASTER_SITES =		https://github.com/moonlight-stream/moonlight-qt/releases/download/v${V}/

CATEGORIES =		games

HOMEPAGE =		https://moonlight-stream.org

MAINTAINER =		Muhammad Kaisar Arkhan <hi@yukiisbo.red>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL Qt5Core Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5QmlModels Qt5Quick Qt5QuickControls2 Qt5Svg
WANTLIB += Qt5Widgets SDL2 SDL2_ttf X11 avcodec avutil c crypto
WANTLIB += drm m opus ssl

MODULES =		devel/qmake \
			x11/qt5

RUN_DEPENDS =		x11/gtk+3,-guic \
			devel/desktop-file-utils

LIB_DEPENDS =		graphics/ffmpeg \
			devel/sdl2 \
			devel/sdl2-ttf \
			audio/opus \
			x11/qt5/qtsvg \
			x11/qt5/qtquickcontrols2 \
			x11/qt5/qtdeclarative

WRKDIST = ${WRKDIR}

.include <bsd.port.mk>
